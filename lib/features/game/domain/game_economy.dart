abstract final class GameEconomy {
  static const hintCoinCost = 10;
  static const undoCoinCost = 5;
  static const maxHintsPerLevel = 5;
  /// Cost to re-open a mechanic tip after the free first-time intro.
  static const mechanicTipReplayCost = 50;

  /// Charged on time-up / bomb / move-limit fail and on restart.
  static const failurePenaltyCoins = 5;
  /// Balance may go into debt down to this floor; then retry needs an ad.
  static const coinDebtFloor = -10;

  static const dailyRewardCoins = <int>[20, 30, 40, 50, 70, 90, 120];
  static const dailyBonusHintDays = {3, 7};
  static const dailyBonusHints = 1;

  /// Clear payout base. L1 = 20 → with stars: 20 / 10 / 5.
  /// Later tours decay so coin income stays tight.
  /// L1=20, L25≈14, L50≈8, floor 5
  static int baseCoinsForLevel(int level) {
    final l = level < 1 ? 1 : level;
    final raw = 20 - ((l - 1) * 0.25);
    return raw.round().clamp(5, 20);
  }

  /// Kolay (no timer): much thinner clear payout. Normal/Zor stay at 1.0.
  static const easyModeRewardScale = 0.25;

  /// Exit interstitial: Kolay every 3rd (L3+), Normal/Zor every 5th (L5+).
  static bool shouldShowExitInterstitial({
    required int level,
    required bool easyMode,
  }) {
    if (easyMode) return level >= 3 && level % 3 == 0;
    return level >= 5 && level % 5 == 0;
  }

  /// "Sonraki bölüm" interstitial — only used in Kolay, every 5th (L5+).
  static bool shouldShowNextLevelInterstitial({
    required int level,
    required bool easyMode,
  }) {
    if (!easyMode) return false;
    return level >= 5 && level % 5 == 0;
  }

  /// Fail overlay offers a rewarded-ad skip after this many fails on a level.
  static const skipOfferAfterFailures = 2;

  /// Whether the fail screen may offer "watch ad → skip to next level".
  static bool canOfferLevelSkip({
    required int level,
    required int maxLevel,
    required int failureCount,
    required bool alreadySkipped,
  }) {
    if (level < 1 || level >= maxLevel) return false;
    if (alreadySkipped) return false;
    return failureCount >= skipOfferAfterFailures;
  }
}
