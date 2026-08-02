import 'game_move.dart';
import 'tube_model.dart';

class UsefulMoveEvaluation {
  const UsefulMoveEvaluation({
    required this.qualifies,
    required this.energy,
    required this.joinsMatchingGroups,
    required this.emptiesSource,
    required this.completesTube,
    required this.immediateReverse,
  });

  final bool qualifies;
  final int energy;
  final bool joinsMatchingGroups;
  final bool emptiesSource;
  final bool completesTube;
  final bool immediateReverse;
}

class UsefulMoveEvaluator {
  const UsefulMoveEvaluator();

  UsefulMoveEvaluation evaluate({
    required GameMove move,
    required List<TubeModel> afterTubes,
    GameMove? previousQualifiedMove,
  }) {
    final destinationId = move.portalExitTubeId ?? move.destinationTubeId;
    final sourceBefore = _tube(move.beforeTubes, move.sourceTubeId);
    final destinationBefore = _tube(move.beforeTubes, destinationId);
    final sourceAfter = _tube(afterTubes, move.sourceTubeId);
    final destinationAfter = _tube(afterTubes, destinationId);
    final previousDestinationId =
        previousQualifiedMove?.portalExitTubeId ??
        previousQualifiedMove?.destinationTubeId;
    final immediateReverse =
        previousQualifiedMove != null &&
        previousQualifiedMove.sourceTubeId == destinationId &&
        previousDestinationId == move.sourceTubeId;
    final joinsMatchingGroups =
        !destinationBefore.isEmpty && destinationBefore.topColor == move.color;
    final emptiesSource = !sourceBefore.isEmpty && sourceAfter.isEmpty;
    final completesTube =
        !destinationBefore.isCompleted && destinationAfter.isCompleted;
    final movesAStack = move.amount >= 2;
    final createsUsefulSpace =
        sourceAfter.freeCapacity >= 2 && !sourceAfter.isUniform;
    final qualifies =
        !immediateReverse &&
        (joinsMatchingGroups ||
            movesAStack ||
            emptiesSource ||
            completesTube ||
            createsUsefulSpace);
    var energy = 0;
    if (qualifies) {
      energy += 16;
      if (joinsMatchingGroups) energy += 10;
      if (movesAStack) energy += 8 + move.amount * 2;
      if (emptiesSource) energy += 14;
      if (completesTube) energy += 34;
      if (createsUsefulSpace) energy += 6;
    }
    return UsefulMoveEvaluation(
      qualifies: qualifies,
      energy: energy,
      joinsMatchingGroups: joinsMatchingGroups,
      emptiesSource: emptiesSource,
      completesTube: completesTube,
      immediateReverse: immediateReverse,
    );
  }

  TubeModel _tube(List<TubeModel> tubes, String id) =>
      tubes.firstWhere((tube) => tube.id == id);
}
