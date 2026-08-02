import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/audio/audio_service.dart';
import '../../progress/data/progress_repository.dart';
import '../../settings/domain/game_difficulty.dart';

final tempoControllerProvider = NotifierProvider<TempoController, TempoState>(
  TempoController.new,
);

class TempoState {
  const TempoState({
    required this.enabled,
    required this.totalSeconds,
    required this.secondsRemaining,
    required this.combo,
    required this.running,
    required this.freezesRemaining,
    required this.frozen,
    required this.difficulty,
  });

  const TempoState.disabled()
    : enabled = false,
      totalSeconds = 0,
      secondsRemaining = 0,
      combo = 0,
      running = false,
      freezesRemaining = 0,
      frozen = false,
      difficulty = GameDifficulty.easy;

  final bool enabled;
  final int totalSeconds;
  final int secondsRemaining;
  final int combo;
  final bool running;
  final int freezesRemaining;
  final bool frozen;
  final GameDifficulty difficulty;

  bool get isUrgent => enabled && secondsRemaining <= 10;
  bool get isExpired => enabled && secondsRemaining <= 0;
  double get progress =>
      !enabled || totalSeconds == 0 ? 1 : secondsRemaining / totalSeconds;

  TempoState copyWith({
    int? secondsRemaining,
    int? combo,
    bool? running,
    int? freezesRemaining,
    bool? frozen,
    GameDifficulty? difficulty,
  }) => TempoState(
    enabled: enabled,
    totalSeconds: totalSeconds,
    secondsRemaining: secondsRemaining ?? this.secondsRemaining,
    combo: combo ?? this.combo,
    running: running ?? this.running,
    freezesRemaining: freezesRemaining ?? this.freezesRemaining,
    frozen: frozen ?? this.frozen,
    difficulty: difficulty ?? this.difficulty,
  );
}

class TempoController extends Notifier<TempoState> {
  Timer? _timer;
  Timer? _freezeTimer;

  @override
  TempoState build() {
    ref.onDispose(() {
      _timer?.cancel();
      _freezeTimer?.cancel();
    });
    return const TempoState.disabled();
  }

  void start(int parMoves, {bool boss = false}) {
    _timer?.cancel();
    unawaited(ref.read(audioServiceProvider).setUrgency(false));
    final progress = ref.read(progressRepositoryProvider);
    final difficultyPreferences = progress is DifficultyPreferences
        ? progress as DifficultyPreferences
        : null;
    final difficulty =
        difficultyPreferences?.difficulty ??
        (progress.tempoEnabled ? GameDifficulty.normal : GameDifficulty.easy);
    if (difficulty == GameDifficulty.easy) {
      state = const TempoState.disabled();
      return;
    }
    // Normal: slightly tighter than before (was ×4.5, 40–95).
    // Hard: short pressure window.
    final baseSeconds = difficulty == GameDifficulty.hard
        ? (parMoves * 1.8).round().clamp(15, 38)
        : (parMoves * 3.6).round().clamp(32, 80);
    final seconds = boss
        ? (baseSeconds * .65).round().clamp(
            difficulty == GameDifficulty.hard ? 12 : 22,
            difficulty == GameDifficulty.hard ? 28 : 52,
          )
        : baseSeconds;
    state = TempoState(
      enabled: true,
      totalSeconds: seconds,
      secondsRemaining: seconds,
      combo: 0,
      running: true,
      freezesRemaining: 1,
      frozen: false,
      difficulty: difficulty,
    );
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
  }

  void _tick() {
    if (!state.enabled || !state.running || state.isExpired) return;
    final next = state.secondsRemaining - 1;
    state = state.copyWith(secondsRemaining: next);
    if (next <= 10 && next > 0) {
      if (next == 10) {
        unawaited(ref.read(audioServiceProvider).setUrgency(true));
      }
      unawaited(
        ref.read(audioServiceProvider).play(GameSound.tick, volume: .48),
      );
    } else if (next == 0) {
      state = state.copyWith(running: false);
      unawaited(ref.read(audioServiceProvider).setUrgency(false));
      unawaited(
        ref.read(audioServiceProvider).play(GameSound.timeout, volume: .82),
      );
    }
  }

  void reward({int? bonusSeconds}) {
    if (!state.enabled || state.isExpired) return;
    final bonus = bonusSeconds ?? (state.combo >= 3 ? 3 : 2);
    final previous = state.secondsRemaining;
    state = state.copyWith(
      secondsRemaining: (state.secondsRemaining + bonus).clamp(
        0,
        state.totalSeconds,
      ),
      combo: state.combo + 1,
    );
    if (previous <= 10 && state.secondsRemaining > 10) {
      unawaited(ref.read(audioServiceProvider).setUrgency(false));
    }
  }

  void penalize() {
    if (!state.enabled || state.isExpired) return;
    final penalty = state.difficulty == GameDifficulty.hard ? 5 : 3;
    final next = (state.secondsRemaining - penalty).clamp(
      0,
      state.totalSeconds,
    );
    state = state.copyWith(secondsRemaining: next, combo: 0);
    if (next <= 10 && state.secondsRemaining > 0) {
      unawaited(ref.read(audioServiceProvider).setUrgency(true));
    }
    if (next == 0) {
      state = state.copyWith(running: false);
      unawaited(ref.read(audioServiceProvider).setUrgency(false));
      unawaited(
        ref.read(audioServiceProvider).play(GameSound.timeout, volume: .82),
      );
    }
  }

  void pause() {
    _freezeTimer?.cancel();
    if (state.enabled) state = state.copyWith(running: false, frozen: false);
    unawaited(ref.read(audioServiceProvider).setUrgency(false));
  }

  void resume() {
    if (!state.enabled || state.isExpired || state.running) return;
    state = state.copyWith(running: true, frozen: false);
    if (state.isUrgent) {
      unawaited(ref.read(audioServiceProvider).setUrgency(true));
    }
  }

  void freezeTime() {
    if (!state.enabled ||
        !state.running ||
        state.isExpired ||
        state.freezesRemaining <= 0) {
      return;
    }
    _freezeTimer?.cancel();
    state = state.copyWith(
      running: false,
      frozen: true,
      freezesRemaining: state.freezesRemaining - 1,
    );
    unawaited(ref.read(audioServiceProvider).setUrgency(false));
    unawaited(
      ref.read(audioServiceProvider).play(GameSound.iceBreak, volume: .7),
    );
    _freezeTimer = Timer(const Duration(seconds: 4), () {
      if (!state.enabled || state.isExpired) return;
      state = state.copyWith(running: true, frozen: false);
      if (state.isUrgent) {
        unawaited(ref.read(audioServiceProvider).setUrgency(true));
      }
    });
  }

  void stop() {
    _timer?.cancel();
    _freezeTimer?.cancel();
    unawaited(ref.read(audioServiceProvider).setUrgency(false));
    state = const TempoState.disabled();
  }
}
