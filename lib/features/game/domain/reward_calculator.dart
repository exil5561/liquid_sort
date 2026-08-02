import 'achievement_result.dart';
import 'flow_combo_state.dart';
import 'reward_breakdown.dart';

class RewardCalculator {
  const RewardCalculator();

  RewardBreakdown calculate({
    required int level,
    required int stars,
    required FlowComboState flow,
    required List<AchievementResult> achievements,
    int hintUses = 0,
  }) {
    final base = 18 + (level * 2).clamp(2, 50);
    final efficiency = switch (stars) {
      3 => 18,
      2 => 8,
      _ => 0,
    };
    return RewardBreakdown(
      baseCoins: base,
      comboBonus:
          flow.earnedCoinBonus +
          (flow.highestComboThisLevel - 1).clamp(0, 5) * 3,
      efficiencyBonus: efficiency,
      achievementBonus: achievements.length * 3,
      assistancePenalty: hintUses * 8,
    );
  }
}
