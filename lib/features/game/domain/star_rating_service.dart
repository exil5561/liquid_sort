class StarRatingService {
  const StarRatingService();

  int calculate({
    required int moves,
    required int parMoves,
    required int undoUses,
    required int hintUses,
    required bool extraTubeUsed,
  }) {
    final assistanceUsed = undoUses > 0 || hintUses > 0 || extraTubeUsed;
    final int stars;
    if (moves <= parMoves ||
        (!assistanceUsed &&
            moves <= parMoves + _threeStarTolerance(parMoves))) {
      stars = 3;
    } else {
      final twoStarLimit = parMoves + (parMoves * .3).ceil().clamp(3, 10);
      stars = moves <= twoStarLimit ? 2 : 1;
    }
    return hintUses > 0 && stars > 2 ? 2 : stars;
  }

  int _threeStarTolerance(int parMoves) => (parMoves * .08).ceil().clamp(1, 3);
}
