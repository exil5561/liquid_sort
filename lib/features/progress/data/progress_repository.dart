import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../game/domain/game_economy.dart';
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

  bool hasSeenMechanicIntro(String mechanicKey);
  Future<void> markMechanicIntroSeen(String mechanicKey);

  /// Persisted fail count for skip-offer gating (does not reset on restart).
  int failureCountFor(int level);
  Future<void> recordLevelFailure(int level);

  /// True after the player used a rewarded-ad skip on this level.
  bool hasUsedLevelSkip(int level);

  /// Unlocks [level] + 1 without marking [level] complete. Returns the unlocked
  /// next level number, or null if skip is not allowed.
  Future<int?> unlockNextLevelBySkip(int level, {required int maxLevel});
}

/// Hidden QA backdoor: unlocks the full campaign for testing.
abstract interface class DeveloperModePreferences {
  bool get developerModeEnabled;
  Future<void> setDeveloperModeEnabled(bool enabled);
}

abstract interface class RewardProgressRepository {
  int get coins;
  int get totalStars;
  int get highestFlowCombo;
  int starsFor(int level);
  int achievementCount(String achievementId);
  int get freeHintTokens;
  int get dailyStreak;
  DateTime? get lastDailyClaimDate;
  bool get canClaimDailyReward;

  Future<void> saveLevelRewards({
    required int level,
    required int stars,
    required int coinsEarned,
    required int highestCombo,
    required List<String> achievements,
  });
  Future<void> grantCoins(int amount);
  Future<bool> spendCoins(int amount);

  /// Deducts a failure penalty, clamping at [GameEconomy.coinDebtFloor].
  /// Returns how many coins were actually removed (0 if already at the floor).
  Future<int> applyFailurePenalty();
  bool get isAtCoinDebtFloor;

  Future<void> grantFreeHintTokens(int amount);
  Future<bool> consumeFreeHintToken();
  Future<DailyRewardClaim?> claimDailyReward();
}

class DailyRewardClaim {
  const DailyRewardClaim({
    required this.dayIndex,
    required this.coins,
    required this.hintTokens,
    required this.streak,
  });

  final int dayIndex;
  final int coins;
  final int hintTokens;
  final int streak;
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
        DifficultyPreferences,
        DeveloperModePreferences {
  SharedPreferencesProgressRepository(this._preferences);

  final SharedPreferences _preferences;

  /// Campaign size used when developer mode forces a full unlock.
  static const developerUnlockLevel = 50;

  @override
  int get highestUnlockedLevel {
    if (developerModeEnabled) return developerUnlockLevel;
    return _preferences.getInt('highestLevel') ?? 1;
  }

  @override
  bool get developerModeEnabled =>
      _preferences.getBool('developerModeEnabled') ?? false;

  @override
  Future<void> setDeveloperModeEnabled(bool enabled) =>
      _preferences.setBool('developerModeEnabled', enabled);

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
  int achievementCount(String achievementId) =>
      _preferences.getInt('achievement.$achievementId') ?? 0;

  @override
  int get freeHintTokens => _preferences.getInt('freeHintTokens') ?? 0;

  @override
  int get dailyStreak => _preferences.getInt('dailyStreak') ?? 0;

  @override
  DateTime? get lastDailyClaimDate {
    final raw = _preferences.getString('lastDailyClaimDate');
    if (raw == null || raw.isEmpty) return null;
    return DateTime.tryParse(raw);
  }

  @override
  bool get canClaimDailyReward {
    final last = lastDailyClaimDate;
    if (last == null) return true;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastDay = DateTime(last.year, last.month, last.day);
    return today.isAfter(lastDay);
  }

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
  int failureCountFor(int level) =>
      _preferences.getInt('failureCount.$level') ?? 0;

  @override
  Future<void> recordLevelFailure(int level) async {
    await _preferences.setInt('failureCount.$level', failureCountFor(level) + 1);
  }

  @override
  bool hasUsedLevelSkip(int level) =>
      _preferences.getBool('levelSkipUsed.$level') ?? false;

  @override
  Future<int?> unlockNextLevelBySkip(int level, {required int maxLevel}) async {
    if (level < 1 || level >= maxLevel) return null;
    if (hasUsedLevelSkip(level)) return null;
    final next = level + 1;
    if (next > highestUnlockedLevel) {
      await _preferences.setInt('highestLevel', next);
    }
    await _preferences.setBool('levelSkipUsed.$level', true);
    return next;
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
  bool hasSeenMechanicIntro(String mechanicKey) =>
      _preferences.getBool('mechanicIntro.$mechanicKey') ?? false;

  @override
  Future<void> markMechanicIntroSeen(String mechanicKey) =>
      _preferences.setBool('mechanicIntro.$mechanicKey', true);

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
  Future<bool> spendCoins(int amount) async {
    if (amount <= 0) return true;
    if (coins < amount) return false;
    await _preferences.setInt('coins', coins - amount);
    return true;
  }

  @override
  bool get isAtCoinDebtFloor => coins <= GameEconomy.coinDebtFloor;

  @override
  Future<int> applyFailurePenalty() async {
    const penalty = GameEconomy.failurePenaltyCoins;
    const floor = GameEconomy.coinDebtFloor;
    if (coins <= floor) return 0;
    final next = coins - penalty;
    final clamped = next < floor ? floor : next;
    final deducted = coins - clamped;
    await _preferences.setInt('coins', clamped);
    return deducted;
  }

  @override
  Future<void> grantFreeHintTokens(int amount) async {
    if (amount <= 0) return;
    await _preferences.setInt('freeHintTokens', freeHintTokens + amount);
  }

  @override
  Future<bool> consumeFreeHintToken() async {
    if (freeHintTokens <= 0) return false;
    await _preferences.setInt('freeHintTokens', freeHintTokens - 1);
    return true;
  }

  @override
  Future<DailyRewardClaim?> claimDailyReward() async {
    if (!canClaimDailyReward) return null;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final last = lastDailyClaimDate;
    var streak = 1;
    if (last != null) {
      final lastDay = DateTime(last.year, last.month, last.day);
      final gap = today.difference(lastDay).inDays;
      if (gap == 1) {
        streak = (dailyStreak % 7) + 1;
      } else {
        streak = 1;
      }
    }
    final dayIndex = streak - 1;
    final coinsEarned = GameEconomy.dailyRewardCoins[dayIndex];
    final hintTokens = GameEconomy.dailyBonusHintDays.contains(streak)
        ? GameEconomy.dailyBonusHints
        : 0;
    await _preferences.setInt('dailyStreak', streak);
    await _preferences.setString('lastDailyClaimDate', today.toIso8601String());
    await grantCoins(coinsEarned);
    if (hintTokens > 0) {
      await grantFreeHintTokens(hintTokens);
    }
    return DailyRewardClaim(
      dayIndex: dayIndex,
      coins: coinsEarned,
      hintTokens: hintTokens,
      streak: streak,
    );
  }

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
