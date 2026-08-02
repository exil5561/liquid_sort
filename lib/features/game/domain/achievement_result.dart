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
  const AchievementResult({
    required this.id,
    required this.title,
    required this.description,
  });

  final AchievementId id;
  final String title;
  final String description;
}
