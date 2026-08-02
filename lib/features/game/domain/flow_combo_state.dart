import 'game_move.dart';

const _unsetComboMove = Object();

class FlowComboState {
  const FlowComboState({
    required this.currentMultiplier,
    required this.comboEnergy,
    required this.consecutiveUsefulMoves,
    required this.highestComboThisLevel,
    required this.earnedCoinBonus,
    required this.scoreBonus,
    required this.freeUndoChargesEarned,
    this.lastQualifiedMove,
  });

  const FlowComboState.initial()
    : currentMultiplier = 1,
      comboEnergy = 0,
      consecutiveUsefulMoves = 0,
      highestComboThisLevel = 1,
      earnedCoinBonus = 0,
      scoreBonus = 0,
      freeUndoChargesEarned = 0,
      lastQualifiedMove = null;

  static const rewardThresholds = <int>[0, 35, 80, 140, 220, 320];

  final int currentMultiplier;
  final int comboEnergy;
  final int consecutiveUsefulMoves;
  final int highestComboThisLevel;
  final int earnedCoinBonus;
  final int scoreBonus;
  final int freeUndoChargesEarned;
  final GameMove? lastQualifiedMove;

  bool get isLegendary => currentMultiplier >= 6;
  String get label =>
      isLegendary ? 'Efsanevi Akış' : 'Flow x$currentMultiplier';

  double get progressToNext {
    if (currentMultiplier >= rewardThresholds.length) return 1;
    final lower = rewardThresholds[currentMultiplier - 1];
    final upper = rewardThresholds[currentMultiplier];
    return ((comboEnergy - lower) / (upper - lower)).clamp(0, 1);
  }

  FlowComboState copyWith({
    int? currentMultiplier,
    int? comboEnergy,
    int? consecutiveUsefulMoves,
    int? highestComboThisLevel,
    int? earnedCoinBonus,
    int? scoreBonus,
    int? freeUndoChargesEarned,
    Object? lastQualifiedMove = _unsetComboMove,
  }) => FlowComboState(
    currentMultiplier: currentMultiplier ?? this.currentMultiplier,
    comboEnergy: comboEnergy ?? this.comboEnergy,
    consecutiveUsefulMoves:
        consecutiveUsefulMoves ?? this.consecutiveUsefulMoves,
    highestComboThisLevel: highestComboThisLevel ?? this.highestComboThisLevel,
    earnedCoinBonus: earnedCoinBonus ?? this.earnedCoinBonus,
    scoreBonus: scoreBonus ?? this.scoreBonus,
    freeUndoChargesEarned: freeUndoChargesEarned ?? this.freeUndoChargesEarned,
    lastQualifiedMove: identical(lastQualifiedMove, _unsetComboMove)
        ? this.lastQualifiedMove
        : lastQualifiedMove as GameMove?,
  );
}
