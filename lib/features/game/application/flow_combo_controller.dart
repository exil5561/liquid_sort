import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/flow_combo_state.dart';
import '../domain/pour_result.dart';
import '../domain/useful_move_evaluator.dart';

final flowComboControllerProvider =
    NotifierProvider<FlowComboController, FlowComboState>(
      FlowComboController.new,
    );

class FlowComboController extends Notifier<FlowComboState> {
  static const _evaluator = UsefulMoveEvaluator();

  @override
  FlowComboState build() => const FlowComboState.initial();

  void reset() => state = const FlowComboState.initial();

  UsefulMoveEvaluation recordMove(PourResult result) {
    final move = result.move!;
    final evaluation = _evaluator.evaluate(
      move: move,
      afterTubes: result.tubes,
      previousQualifiedMove: state.lastQualifiedMove,
    );
    if (!evaluation.qualifies) return evaluation;

    final previousMultiplier = state.currentMultiplier;
    final energy = (state.comboEnergy + evaluation.energy).clamp(0, 420);
    final multiplier = _multiplierFor(energy);
    state = state.copyWith(
      currentMultiplier: multiplier,
      comboEnergy: energy,
      consecutiveUsefulMoves: state.consecutiveUsefulMoves + 1,
      highestComboThisLevel: multiplier > state.highestComboThisLevel
          ? multiplier
          : state.highestComboThisLevel,
      earnedCoinBonus: _coinBonusFor(multiplier),
      scoreBonus: _scoreBonusFor(multiplier),
      freeUndoChargesEarned: previousMultiplier < 4 && multiplier >= 4
          ? state.freeUndoChargesEarned + 1
          : state.freeUndoChargesEarned,
      lastQualifiedMove: move,
    );
    return evaluation;
  }

  void onUndo() {
    final energy = (state.comboEnergy - 45).clamp(0, 420);
    final multiplier = _multiplierFor(energy);
    state = state.copyWith(
      currentMultiplier: multiplier,
      comboEnergy: energy,
      consecutiveUsefulMoves: (state.consecutiveUsefulMoves - 1).clamp(0, 999),
      earnedCoinBonus: _coinBonusFor(multiplier),
      scoreBonus: _scoreBonusFor(multiplier),
      lastQualifiedMove: null,
    );
  }

  int _multiplierFor(int energy) {
    var multiplier = 1;
    for (
      var index = 1;
      index < FlowComboState.rewardThresholds.length;
      index++
    ) {
      if (energy >= FlowComboState.rewardThresholds[index]) {
        multiplier = index + 1;
      }
    }
    return multiplier;
  }

  int _coinBonusFor(int multiplier) => switch (multiplier) {
    2 => 5,
    3 => 10,
    4 => 16,
    5 => 28,
    >= 6 => 45,
    _ => 0,
  };

  int _scoreBonusFor(int multiplier) => switch (multiplier) {
    3 => 150,
    4 => 300,
    5 => 550,
    >= 6 => 900,
    _ => 0,
  };
}
