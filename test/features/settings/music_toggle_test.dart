import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/core/audio/audio_service.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';
import 'package:liquid_sort/features/settings/presentation/settings_screen.dart';

void main() {
  testWidgets('background music switch stops music immediately', (
    tester,
  ) async {
    final progress = _MemoryProgress();
    final audio = _FakeAudio();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          progressRepositoryProvider.overrideWithValue(progress),
          audioServiceProvider.overrideWithValue(audio),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ),
    );
    await tester.pump();

    await tester.tap(find.text('Arka plan müziği'));
    await tester.pump();

    expect(progress.musicEnabled, isFalse);
    expect(audio.musicEnabled, isFalse);
  });
}

class _MemoryProgress implements ProgressRepository {
  bool _musicEnabled = true;

  @override
  Set<int> get completedLevels => {};
  @override
  bool get hapticsEnabled => false;
  @override
  int get highestUnlockedLevel => 1;
  @override
  bool get musicEnabled => _musicEnabled;
  @override
  bool get reducedAnimations => false;
  @override
  bool get soundEnabled => true;
  @override
  bool get tempoEnabled => true;
  @override
  int? bestMovesFor(int level) => null;
  @override
  Future<void> saveLevelCompleted(int level, int moves) async {}
  @override
  Future<void> setHapticsEnabled(bool enabled) async {}
  @override
  Future<void> setMusicEnabled(bool enabled) async => _musicEnabled = enabled;
  @override
  Future<void> setReducedAnimations(bool enabled) async {}
  @override
  Future<void> setSoundEnabled(bool enabled) async {}
  @override
  Future<void> setTempoEnabled(bool enabled) async {}
}

class _FakeAudio implements AudioService {
  bool musicEnabled = true;

  @override
  Future<void> dispose() async {}
  @override
  Future<void> play(GameSound sound, {double volume = 1}) async {}
  @override
  Future<void> setMusicEnabled(bool enabled) async => musicEnabled = enabled;
  @override
  Future<void> setUrgency(bool urgent) async {}
  @override
  Future<void> startMusic() async => musicEnabled = true;
  @override
  Future<void> stopEffects() async {}
  @override
  Future<void> stopMusic() async => musicEnabled = false;
}
