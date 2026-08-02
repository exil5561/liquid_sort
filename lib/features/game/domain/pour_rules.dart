import 'color_mix_recipe.dart';
import 'game_move.dart';
import 'liquid_color_id.dart';
import 'pour_result.dart';
import 'tube_model.dart';

class PourRules {
  const PourRules({
    this.allowUniformMoveToEmpty = false,
    this.mixRecipes = const [],
    this.heatedTubeId,
    this.heatUnitsRemaining = 0,
    this.portalPairs = const {},
  });

  final bool allowUniformMoveToEmpty;
  final List<ColorMixRecipe> mixRecipes;
  final String? heatedTubeId;
  final int heatUnitsRemaining;
  final Map<String, String> portalPairs;

  bool canPour(TubeModel source, TubeModel destination) =>
      _failureFor(source, destination, entryTubeId: destination.id) == null;

  int calculatePourAmount(TubeModel source, TubeModel destination) {
    if (!canPour(source, destination)) return 0;
    return _calculatePourAmount(
      source,
      destination,
      entryTubeId: destination.id,
    );
  }

  int _calculatePourAmount(
    TubeModel source,
    TubeModel destination, {
    required String entryTubeId,
  }) {
    if (entryTubeId == heatedTubeId) {
      return source.topGroupSize < heatUnitsRemaining
          ? source.topGroupSize
          : heatUnitsRemaining;
    }
    final recipe = _recipeFor(source.topColor, destination.topColor);
    if (recipe != null) {
      return [
        source.topGroupSize,
        destination.topGroupSize,
        destination.freeCapacity,
      ].reduce((a, b) => a < b ? a : b);
    }
    return source.topGroupSize < destination.freeCapacity
        ? source.topGroupSize
        : destination.freeCapacity;
  }

  PourResult executePour({
    required List<TubeModel> tubes,
    required String sourceTubeId,
    required String destinationTubeId,
    required int currentMoveCount,
  }) {
    final sourceIndex = tubes.indexWhere((tube) => tube.id == sourceTubeId);
    final destinationIndex = tubes.indexWhere(
      (tube) => tube.id == destinationTubeId,
    );
    if (sourceIndex == -1 || destinationIndex == -1) {
      return PourResult.failure(PourFailure.tubeNotFound);
    }

    final source = tubes[sourceIndex];
    final entryDestination = tubes[destinationIndex];
    final portalExitTubeId = portalPairs[entryDestination.id];
    final effectiveDestinationIndex = portalExitTubeId == null
        ? destinationIndex
        : tubes.indexWhere((tube) => tube.id == portalExitTubeId);
    if (effectiveDestinationIndex == -1) {
      return PourResult.failure(PourFailure.tubeNotFound);
    }
    final destination = tubes[effectiveDestinationIndex];
    final failure = _failureFor(
      source,
      destination,
      entryTubeId: entryDestination.id,
    );
    if (failure != null) return PourResult.failure(failure);

    final amount = _calculatePourAmount(
      source,
      destination,
      entryTubeId: entryDestination.id,
    );
    final color = source.topColor!;
    final evaporated = entryDestination.id == heatedTubeId;
    final mixRecipe = _recipeFor(source.topColor, destination.topColor);
    final nextTubes = [...tubes];
    nextTubes[sourceIndex] = source.copyWith(
      liquids: source.liquids.sublist(0, source.liquids.length - amount),
    );
    nextTubes[effectiveDestinationIndex] = destination.copyWith(
      liquids: evaporated
          ? destination.liquids
          : mixRecipe == null
          ? [...destination.liquids, ...List.filled(amount, color)]
          : [
              ...destination.liquids.sublist(
                0,
                destination.liquids.length - amount,
              ),
              ...List.filled(amount * 2, mixRecipe.result),
            ],
    );
    final move = GameMove(
      sourceTubeId: source.id,
      destinationTubeId: entryDestination.id,
      color: color,
      amount: amount,
      beforeTubes: tubes,
      beforeMoveCount: currentMoveCount,
      mixedWith: mixRecipe == null ? null : destination.topColor,
      mixedColor: mixRecipe?.result,
      evaporated: evaporated,
      portalExitTubeId: portalExitTubeId,
    );
    return PourResult.success(move: move, tubes: nextTubes);
  }

  PourFailure? _failureFor(
    TubeModel source,
    TubeModel destination, {
    required String entryTubeId,
  }) {
    if (source.id == entryTubeId || source.id == destination.id) {
      return PourFailure.sameTube;
    }
    if (source.isEmpty) return PourFailure.emptySource;
    if (source.isCompleted) return PourFailure.completedSource;
    if (entryTubeId == heatedTubeId) {
      return heatUnitsRemaining > 0 ? null : PourFailure.heaterExhausted;
    }
    if (destination.isFull) return PourFailure.fullDestination;
    if (!destination.isEmpty &&
        source.topColor != destination.topColor &&
        _recipeFor(source.topColor, destination.topColor) == null) {
      return PourFailure.colorMismatch;
    }
    if (!allowUniformMoveToEmpty && destination.isEmpty && source.isUniform) {
      return PourFailure.uselessMove;
    }
    return null;
  }

  ColorMixRecipe? _recipeFor(
    LiquidColorId? source,
    LiquidColorId? destination,
  ) {
    if (source == null || destination == null) return null;
    for (final recipe in mixRecipes) {
      if (recipe.matches(source, destination)) return recipe;
    }
    return null;
  }
}
