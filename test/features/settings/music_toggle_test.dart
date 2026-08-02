import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/core/audio/audio_service.dart';
import 'package:liquid_sort/core/l10n/locale_controller.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';
import 'package:liquid_sort/features/settings/presentation/settings_screen.dart';
import 'package:liquid_sort/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('background music switch stops music immediately', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final progress = _MemoryProgress();
    final audio = _FakeAudio();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          progressRepositoryProvider.overrideWithValue(progress),
          audioServiceProvider.overrideWithValue(audio),
          sharedPreferencesProvider.overrideWithValue(prefs),
        ],
        child: MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SettingsScreen(),
        ),
      ),
    );
    await tester.pump();

    // Settings opens on the general tab; audio controls live on the Audio tab.
    await tester.tap(find.text('Audio'));
    await tester.pump(); // CosmicBackdrop animates forever — avoid pumpAndSettle.

    await tester.tap(find.text('Background music'));
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
  @override
  bool hasSeenMechanicIntro(String mechanicKey) => true;
  @override
  Future<void> markMechanicIntroSeen(String mechanicKey) async {}
  @override
  int failureCountFor(int level) => 0;
  @override
  Future<void> recordLevelFailure(int level) async {}
  @override
  bool hasUsedLevelSkip(int level) => false;
  @override
  Future<int?> unlockNextLevelBySkip(int level, {required int maxLevel}) async =>
      null;
}

class _FakeAudio implements AudioService {
  bool musicEnabled = true;

  @override
  Future<void> dispose() async {}
  @override
  Future<void> unlock() async {}
  @override
  Future<void> play(GameSound sound, {double volume = 1}) async {}
  @override
  Future<void> setMusicEnabled(bool enabled) async => musicEnabled = enabled;
  @override
  Future<void> setUrgency(bool urgent) async {}
  @override
  Future<void> startMusic() async => musicEnabled = true;
  @override
  Future<void> pauseMusic() async {}
  @override
  Future<void> resumeMusic() async {}
  @override
  Future<void> stopEffects() async {}
  @override
  Future<void> stopMusic() async => musicEnabled = false;
}
