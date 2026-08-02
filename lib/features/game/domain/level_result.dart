import 'achievement_result.dart';
import 'reward_breakdown.dart';

class LevelResult {
  LevelResult({
    required this.level,
    required this.movesUsed,
    required this.parMoves,
    required this.previousBest,
    required this.highestFlowCombo,
    required this.undoUses,
    required this.hintUses,
    required this.extraTubeUsed,
    required this.stars,
    required this.reward,
    required List<AchievementResult> achievements,
  }) : achievements = List.unmodifiable(achievements);

  final int level;
  final int movesUsed;
  final int parMoves;
  final int? previousBest;
  final int highestFlowCombo;
  final int undoUses;
  final int hintUses;
  final bool extraTubeUsed;
  final int stars;
  final RewardBreakdown reward;
  final List<AchievementResult> achievements;

  bool get isNewBest => previousBest == null || movesUsed < previousBest!;

  LevelResult copyWith({RewardBreakdown? reward}) => LevelResult(
    level: level,
    movesUsed: movesUsed,
    parMoves: parMoves,
    previousBest: previousBest,
    highestFlowCombo: highestFlowCombo,
    undoUses: undoUses,
    hintUses: hintUses,
    extraTubeUsed: extraTubeUsed,
    stars: stars,
    reward: reward ?? this.reward,
    achievements: achievements,
  );
}
