import 'dart:async';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/services/feedback_service.dart';
import '../../progress/data/progress_repository.dart';
import '../data/campaign_levels.dart';
import '../domain/game_move.dart';
import '../domain/level_definition.dart';
import '../domain/game_state.dart';
import '../domain/game_status.dart';
import '../domain/pour_result.dart';
import '../domain/pour_rules.dart';
import '../domain/puzzle_solver.dart';
import '../domain/tube_model.dart';

final gameControllerProvider = NotifierProvider<GameController, GameState>(
  GameController.new,
);

enum GameFailureReason { time, moveLimit, bomb, completionOrder }

class GameController extends Notifier<GameState> {
  bool _moveCommitted = false;
  late LevelDefinition _level;
  GameFailureReason? _failureReason;

  PourRules get _rules => PourRules(
    mixRecipes: _level.mixRecipes,
    heatedTubeId: _level.heatedTubeId,
    heatUnitsRemaining: heatUnitsRemaining,
    portalPairs: _level.portalTubeA == null
        ? const {}
        : {
            _level.portalTubeA!: _level.portalTubeB!,
            _level.portalTubeB!: _level.portalTubeA!,
          },
  );
  LevelDefinition get currentDefinition => _level;
  GameFailureReason? get failureReason => _failureReason;

  int get heatUnitsUsed => state.history
      .where((move) => move.evaporated)
      .fold(0, (total, move) => total + move.amount);

  int get heatUnitsRemaining => (_level.heatUnitCapacity - heatUnitsUsed).clamp(
    0,
    _level.heatUnitCapacity,
  );

  int get _completedTubeCount =>
      state.tubes.where((tube) => tube.isCompleted).length;

  bool isTubeFrozen(String tubeId) =>
      _level.frozenTubeId == tubeId && state.moveCount < _level.frozenForMoves;

  bool isTubeLocked(String tubeId) =>
      _level.lockedTubeId == tubeId &&
      _completedTubeCount < _level.unlockAfterCompletedTubes;

  @override
  GameState build() {
    _level = CampaignLevels.byNumber(1);
    _failureReason = null;
    return GameState.fromLevel(_level);
  }

  void startLevel(int number) {
    _moveCommitted = false;
    _failureReason = null;
    _level = CampaignLevels.byNumber(number);
    state = GameState.fromLevel(_level);
  }

  PourResult? tapTube(String tubeId) {
    if (state.status != GameStatus.playing) return null;
    final tapped = state.tubes.firstWhere((tube) => tube.id == tubeId);

    if (isTubeFrozen(tubeId)) {
      unawaited(ref.read(feedbackServiceProvider).invalid());
      return PourResult.failure(PourFailure.frozenTube);
    }
    if (isTubeLocked(tubeId)) {
      unawaited(ref.read(feedbackServiceProvider).invalid());
      return PourResult.failure(PourFailure.lockedTube);
    }
    if (_level.valveTubeId == tubeId && state.selectedTubeId == null) {
      unawaited(ref.read(feedbackServiceProvider).invalid());
      return PourResult.failure(PourFailure.oneWayValve);
    }

    if (state.selectedTubeId == null) {
      if (tapped.isEmpty || tapped.isCompleted) {
        unawaited(ref.read(feedbackServiceProvider).invalid());
        return PourResult.failure(
          tapped.isEmpty
              ? PourFailure.emptySource
              : PourFailure.completedSource,
        );
      }
      state = state.copyWith(
        selectedTubeId: tubeId,
        hintSourceId: null,
        hintDestinationId: null,
      );
      unawaited(ref.read(feedbackServiceProvider).selection());
      return null;
    }

    if (state.selectedTubeId == tubeId) {
      state = state.copyWith(selectedTubeId: null);
      return null;
    }

    final portalExitTubeId = _level.portalTubeA == tubeId
        ? _level.portalTubeB
        : _level.portalTubeB == tubeId
        ? _level.portalTubeA
        : null;
    if (portalExitTubeId != null && isTubeFrozen(portalExitTubeId)) {
      unawaited(ref.read(feedbackServiceProvider).invalid());
      return PourResult.failure(PourFailure.frozenTube);
    }
    if (portalExitTubeId != null && isTubeLocked(portalExitTubeId)) {
      unawaited(ref.read(feedbackServiceProvider).invalid());
      return PourResult.failure(PourFailure.lockedTube);
    }

    final result = _rules.executePour(
      tubes: state.tubes,
      sourceTubeId: state.selectedTubeId!,
      destinationTubeId: tubeId,
      currentMoveCount: state.moveCount,
    );
    if (!result.isSuccess) {
      unawaited(ref.read(feedbackServiceProvider).invalid());
      if (!tapped.isEmpty &&
          !tapped.isCompleted &&
          tapped.id != _level.valveTubeId) {
        state = state.copyWith(selectedTubeId: tubeId);
      }
      return result;
    }

    _moveCommitted = false;
    state = state.copyWith(
      status: GameStatus.animating,
      selectedTubeId: null,
      hintSourceId: null,
      hintDestinationId: null,
    );
    unawaited(ref.read(feedbackServiceProvider).pour());
    return result;
  }

  void commitPour(PourResult result) {
    if (_moveCommitted || !result.isSuccess) return;
    _moveCommitted = true;
    _checkCompletionOrder(result);
    state = state.copyWith(
      tubes: result.tubes,
      moveCount: state.moveCount + 1,
      history: [...state.history, result.move!],
      status: GameStatus.animating,
    );
  }

  void _checkCompletionOrder(PourResult result) {
    if (_level.completionOrder.isEmpty) return;
    final beforeCompleted = result.move!.beforeTubes
        .where((tube) => tube.isCompleted)
        .map((tube) => tube.topColor!)
        .toSet();
    final afterCompleted = result.tubes
        .where((tube) => tube.isCompleted)
        .map((tube) => tube.topColor!)
        .toSet();
    final newlyCompleted = afterCompleted.difference(beforeCompleted);
    var progress = 0;
    while (progress < _level.completionOrder.length &&
        beforeCompleted.contains(_level.completionOrder[progress])) {
      progress++;
    }
    for (final color in newlyCompleted) {
      final remaining = _level.completionOrder.skip(progress);
      if (!remaining.contains(color)) continue;
      if (progress >= _level.completionOrder.length ||
          color != _level.completionOrder[progress]) {
        _failureReason = GameFailureReason.completionOrder;
        return;
      }
      progress++;
    }
  }

  void finishPourAnimation() {
    if (!_moveCommitted || state.status != GameStatus.animating) return;
    if (_failureReason == GameFailureReason.completionOrder) {
      state = state.copyWith(status: GameStatus.failed);
    } else if (state.isSolved) {
      state = state.copyWith(status: GameStatus.completed);
      unawaited(
        ref
            .read(progressRepositoryProvider)
            .saveLevelCompleted(state.currentLevel, state.moveCount),
      );
    } else if (_level.bombTubeId != null &&
        state.moveCount >= _level.bombMoveLimit! &&
        !state.tubes
            .firstWhere((tube) => tube.id == _level.bombTubeId)
            .isCompleted) {
      _failureReason = GameFailureReason.bomb;
      state = state.copyWith(status: GameStatus.failed);
    } else if (_level.moveLimit != null &&
        state.moveCount >= _level.moveLimit!) {
      _failureReason = GameFailureReason.moveLimit;
      state = state.copyWith(status: GameStatus.failed);
    } else {
      state = state.copyWith(status: GameStatus.playing);
    }
  }

  void undo() {
    if (state.status != GameStatus.playing ||
        state.history.isEmpty ||
        state.freeUndosRemaining <= 0) {
      return;
    }
    final move = state.history.last;
    var restored = move.beforeTubes;
    if (state.extraTubeUsed &&
        !restored.any((tube) => tube.id == 'extra-${state.currentLevel}')) {
      restored = [
        ...restored,
        TubeModel(id: 'extra-${state.currentLevel}', liquids: const []),
      ];
    }
    state = state.copyWith(
      tubes: restored,
      moveCount: move.beforeMoveCount,
      history: state.history.sublist(0, state.history.length - 1),
      selectedTubeId: null,
      hintSourceId: null,
      hintDestinationId: null,
      freeUndosRemaining: state.freeUndosRemaining - 1,
      undoUses: state.undoUses + 1,
    );
    unawaited(ref.read(feedbackServiceProvider).undo());
  }

  void restart() {
    unawaited(ref.read(feedbackServiceProvider).button());
    startLevel(state.currentLevel);
  }

  void addExtraTube() {
    if (state.status != GameStatus.playing || state.extraTubeUsed) return;
    unawaited(ref.read(feedbackServiceProvider).button());
    state = state.copyWith(
      tubes: [
        ...state.tubes,
        TubeModel(id: 'extra-${state.currentLevel}', liquids: const []),
      ],
      extraTubeUsed: true,
      selectedTubeId: null,
    );
  }

  Future<void> showHint() async {
    if (state.status != GameStatus.playing) return;
    unawaited(ref.read(feedbackServiceProvider).button());
    final snapshot = state.tubes;
    state = state.copyWith(
      status: GameStatus.animating,
      selectedTubeId: null,
      hintSourceId: null,
      hintDestinationId: null,
    );
    List<GameMove>? solution;
    try {
      if (_level.mixRecipes.isNotEmpty ||
          _level.frozenTubeId != null ||
          _level.lockedTubeId != null ||
          _level.heatedTubeId != null ||
          _level.portalTubeA != null ||
          _level.valveTubeId != null ||
          _level.bombTubeId != null ||
          _level.completionOrder.isNotEmpty) {
        final hint = _quickAvailableHint(snapshot);
        solution = hint == null ? null : [hint];
      } else if (kIsWeb) {
        final hint = const PuzzleSolver(maxNodes: 30000).quickHint(snapshot);
        solution = hint == null ? null : [hint];
      } else {
        solution = await Isolate.run(
          () => const PuzzleSolver(maxNodes: 30000).solve(snapshot),
        );
      }
    } catch (_) {
      if (state.status == GameStatus.animating) {
        state = state.copyWith(status: GameStatus.playing);
      }
      unawaited(ref.read(feedbackServiceProvider).invalid());
      return;
    }
    if (state.status != GameStatus.animating) return;
    if (solution != null && solution.isNotEmpty) {
      state = state.copyWith(
        status: GameStatus.playing,
        hintSourceId: solution.first.sourceTubeId,
        hintDestinationId: solution.first.destinationTubeId,
        hintUses: state.hintUses + 1,
      );
    } else {
      state = state.copyWith(status: GameStatus.playing);
      unawaited(ref.read(feedbackServiceProvider).invalid());
    }
  }

  GameMove? _quickAvailableHint(List<TubeModel> tubes) {
    if (_level.heatedTubeId != null && heatUnitsRemaining > 0) {
      final wasteTube = tubes.cast<TubeModel?>().firstWhere(
        (tube) => tube?.id.startsWith('waste-') ?? false,
        orElse: () => null,
      );
      if (wasteTube != null && !wasteTube.isEmpty) {
        final result = _rules.executePour(
          tubes: tubes,
          sourceTubeId: wasteTube.id,
          destinationTubeId: _level.heatedTubeId!,
          currentMoveCount: state.moveCount,
        );
        if (result.isSuccess) return result.move;
      }
    }
    for (final source in tubes) {
      if (source.id == _level.valveTubeId) continue;
      if (isTubeFrozen(source.id) || isTubeLocked(source.id)) continue;
      for (final destination in tubes) {
        if (source.id == destination.id ||
            isTubeFrozen(destination.id) ||
            isTubeLocked(destination.id)) {
          continue;
        }
        final result = _rules.executePour(
          tubes: tubes,
          sourceTubeId: source.id,
          destinationTubeId: destination.id,
          currentMoveCount: state.moveCount,
        );
        if (result.isSuccess) return result.move;
      }
    }
    return null;
  }

  void failLevel({GameFailureReason reason = GameFailureReason.time}) {
    if (state.status != GameStatus.playing) return;
    _failureReason = reason;
    state = state.copyWith(
      status: GameStatus.failed,
      selectedTubeId: null,
      hintSourceId: null,
      hintDestinationId: null,
    );
  }

  void grantFreeUndo({int amount = 1}) {
    if (amount <= 0) return;
    state = state.copyWith(
      freeUndosRemaining: state.freeUndosRemaining + amount,
    );
  }
}
