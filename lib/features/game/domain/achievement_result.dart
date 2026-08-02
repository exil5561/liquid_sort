enum AchievementId {
  perfectSort,
  underPar,
  noUndo,
  noHint,
  flowMaster,
  newRecord,
  firstTry,
  noExtraTube,
}

class AchievementResult {
  const AchievementResult({required this.id});

  final AchievementId id;
}
