import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../audio/audio_service.dart';
import '../../features/progress/data/progress_repository.dart';

abstract interface class FeedbackService {
  Future<void> selection();
  Future<void> invalid();
  Future<void> pour();
  Future<void> completion();
  Future<void> undo();
  Future<void> button();
}

final feedbackServiceProvider = Provider<FeedbackService>((ref) {
  return SystemFeedbackService(
    ref.watch(progressRepositoryProvider),
    ref.watch(audioServiceProvider),
  );
});

class SystemFeedbackService implements FeedbackService {
  const SystemFeedbackService(this._progress, this._audio);
  final ProgressRepository _progress;
  final AudioService _audio;

  @override
  Future<void> completion() async {
    if (_progress.hapticsEnabled) await HapticFeedback.heavyImpact();
    await _audio.play(GameSound.complete, volume: .8);
  }

  @override
  Future<void> invalid() async {
    if (_progress.hapticsEnabled) await HapticFeedback.vibrate();
    await _audio.play(GameSound.invalid, volume: .75);
  }

  @override
  Future<void> pour() async {
    if (_progress.hapticsEnabled) await HapticFeedback.lightImpact();
    await _audio.play(GameSound.pour, volume: .62);
  }

  @override
  Future<void> selection() async {
    if (_progress.hapticsEnabled) await HapticFeedback.selectionClick();
    await _audio.play(GameSound.select, volume: .72);
  }

  @override
  Future<void> undo() async {
    if (_progress.hapticsEnabled) await HapticFeedback.mediumImpact();
    await _audio.play(GameSound.undo, volume: .72);
  }

  @override
  Future<void> button() => _audio.play(GameSound.button, volume: .55);
}
