import '../../settings/domain/game_difficulty.dart';
import 'achievement_result.dart';
import 'flow_combo_state.dart';
import 'game_economy.dart';
import 'reward_breakdown.dart';

class RewardCalculator {
  const RewardCalculator();

  RewardBreakdown calculate({
    required int level,
    required int stars,
    required FlowComboState flow,
    required List<AchievementResult> achievements,
    int hintUses = 0,
    GameDifficulty difficulty = GameDifficulty.normal,
  }) {
    // Star payout only: L1 = 20 / 10 / 5. Combo/achievements don't add coins.
    final starMultiplier = switch (stars) {
      3 => 1.0, // %100
      2 => 0.5, // %50
      _ => 0.25, // %25
    };
    final base = GameEconomy.baseCoinsForLevel(level);
    final scaledBase = difficulty == GameDifficulty.easy
        ? (base * GameEconomy.easyModeRewardScale).round().clamp(1, base)
        : base;
    return RewardBreakdown(
      baseCoins: scaledBase,
      comboBonus: 0,
      efficiencyBonus: 0,
      achievementBonus: 0,
      assistancePenalty: 0,
      starMultiplier: starMultiplier,
    );
  }
}
