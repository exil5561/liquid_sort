import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/progress/data/progress_repository.dart';
import '../audio/audio_service.dart';

final premiumFeedbackServiceProvider = Provider<PremiumFeedbackService>((ref) {
  return PremiumFeedbackService(
    ref.watch(progressRepositoryProvider),
    ref.watch(audioServiceProvider),
  );
});

class PremiumFeedbackService {
  const PremiumFeedbackService(this._progress, this._audio);

  final ProgressRepository _progress;
  final AudioService _audio;

  Future<void> pourLanding() async {
    if (_progress.hapticsEnabled) await HapticFeedback.lightImpact();
    await _audio.play(GameSound.liquidLanding, volume: .38);
  }

  Future<void> tubeCompleted() async {
    if (_progress.hapticsEnabled) await HapticFeedback.mediumImpact();
    await _audio.play(GameSound.tubeCompleted, volume: .62);
  }

  Future<void> comboMilestone() async {
    if (_progress.hapticsEnabled) await HapticFeedback.mediumImpact();
    await _audio.play(GameSound.comboIncrease, volume: .62);
  }

  Future<void> starReveal() => _audio.play(GameSound.starReveal, volume: .42);

  Future<void> coinTick() => _audio.play(GameSound.coinCount, volume: .28);

  Future<void> levelVictory() async {
    if (_progress.hapticsEnabled) {
      await HapticFeedback.mediumImpact();
      await Future<void>.delayed(const Duration(milliseconds: 90));
      await HapticFeedback.heavyImpact();
    }
    await _audio.play(GameSound.victory, volume: .78);
  }
}
