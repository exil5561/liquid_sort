import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../settings/domain/game_difficulty.dart';

abstract interface class ProgressRepository {
  int get highestUnlockedLevel;
  Set<int> get completedLevels;
  int? bestMovesFor(int level);
  bool get soundEnabled;
  bool get musicEnabled;
  bool get hapticsEnabled;
  bool get reducedAnimations;
  bool get tempoEnabled;

  Future<void> saveLevelCompleted(int level, int moves);
  Future<void> setSoundEnabled(bool enabled);
  Future<void> setMusicEnabled(bool enabled);
  Future<void> setHapticsEnabled(bool enabled);
  Future<void> setReducedAnimations(bool enabled);
  Future<void> setTempoEnabled(bool enabled);
}

abstract interface class RewardProgressRepository {
  int get coins;
  int get totalStars;
  int get highestFlowCombo;
  int starsFor(int level);

  Future<void> saveLevelRewards({
    required int level,
    required int stars,
    required int coinsEarned,
    required int highestCombo,
    required List<String> achievements,
  });
  Future<void> grantCoins(int amount);
}

abstract interface class AccessibilityPreferences {
  bool get colorAccessibilityEnabled;
  Future<void> setColorAccessibilityEnabled(bool enabled);
}

abstract interface class DifficultyPreferences {
  GameDifficulty get difficulty;
  Future<void> setDifficulty(GameDifficulty difficulty);
}

final progressRepositoryProvider = Provider<ProgressRepository>(
  (ref) => throw StateError('ProgressRepository must be overridden in main.'),
);

class SharedPreferencesProgressRepository
    implements
        ProgressRepository,
        RewardProgressRepository,
        AccessibilityPreferences,
        DifficultyPreferences {
  SharedPreferencesProgressRepository(this._preferences);

  final SharedPreferences _preferences;

  @override
  int get highestUnlockedLevel => _preferences.getInt('highestLevel') ?? 1;

  @override
  Set<int> get completedLevels =>
      (_preferences.getStringList('completedLevels') ?? const [])
          .map(int.parse)
          .toSet();

  @override
  int? bestMovesFor(int level) => _preferences.getInt('bestMoves.$level');

  @override
  bool get soundEnabled => _preferences.getBool('soundEnabled') ?? true;

  @override
  bool get musicEnabled => _preferences.getBool('musicEnabled') ?? true;

  @override
  bool get hapticsEnabled => _preferences.getBool('hapticsEnabled') ?? true;

  @override
  bool get reducedAnimations =>
      _preferences.getBool('reducedAnimations') ?? false;

  @override
  bool get tempoEnabled => _preferences.getBool('tempoEnabled') ?? false;

  @override
  int get coins => _preferences.getInt('coins') ?? 0;

  @override
  int get totalStars => _preferences.getInt('totalStars') ?? 0;

  @override
  int get highestFlowCombo => _preferences.getInt('highestFlowCombo') ?? 1;

  @override
  bool get colorAccessibilityEnabled =>
      _preferences.getBool('colorAccessibilityEnabled') ?? false;

  @override
  GameDifficulty get difficulty {
    final saved = _preferences.getString('difficulty');
    return GameDifficulty.values.firstWhere(
      (value) => value.name == saved,
      orElse: () => GameDifficulty.normal,
    );
  }

  @override
  int starsFor(int level) => _preferences.getInt('stars.$level') ?? 0;

  @override
  Future<void> saveLevelCompleted(int level, int moves) async {
    final completed = completedLevels..add(level);
    await _preferences.setStringList(
      'completedLevels',
      completed.map((value) => '$value').toList()..sort(),
    );
    final currentBest = bestMovesFor(level);
    if (currentBest == null || moves < currentBest) {
      await _preferences.setInt('bestMoves.$level', moves);
    }
    final nextUnlocked = (level + 1).clamp(1, 50);
    if (nextUnlocked > highestUnlockedLevel) {
      await _preferences.setInt('highestLevel', nextUnlocked);
    }
  }

  @override
  Future<void> setHapticsEnabled(bool enabled) =>
      _preferences.setBool('hapticsEnabled', enabled);

  @override
  Future<void> setReducedAnimations(bool enabled) =>
      _preferences.setBool('reducedAnimations', enabled);

  @override
  Future<void> setSoundEnabled(bool enabled) =>
      _preferences.setBool('soundEnabled', enabled);

  @override
  Future<void> setMusicEnabled(bool enabled) =>
      _preferences.setBool('musicEnabled', enabled);

  @override
  Future<void> setTempoEnabled(bool enabled) =>
      _preferences.setBool('tempoEnabled', enabled);

  @override
  Future<void> setColorAccessibilityEnabled(bool enabled) =>
      _preferences.setBool('colorAccessibilityEnabled', enabled);

  @override
  Future<void> setDifficulty(GameDifficulty difficulty) =>
      _preferences.setString('difficulty', difficulty.name);

  @override
  Future<void> grantCoins(int amount) =>
      _preferences.setInt('coins', coins + amount);

  @override
  Future<void> saveLevelRewards({
    required int level,
    required int stars,
    required int coinsEarned,
    required int highestCombo,
    required List<String> achievements,
  }) async {
    final previousStars = starsFor(level);
    if (stars > previousStars) {
      await _preferences.setInt('stars.$level', stars);
      await _preferences.setInt(
        'totalStars',
        totalStars + stars - previousStars,
      );
    }
    await grantCoins(coinsEarned);
    if (highestCombo > highestFlowCombo) {
      await _preferences.setInt('highestFlowCombo', highestCombo);
    }
    for (final achievement in achievements) {
      final key = 'achievement.$achievement';
      await _preferences.setInt(key, (_preferences.getInt(key) ?? 0) + 1);
    }
  }
}
