import 'game_move.dart';
import 'pour_rules.dart';
import 'tube_model.dart';

class PuzzleSolver {
  const PuzzleSolver({this.maxNodes = 50000, this.rules = const PourRules()});

  final int maxNodes;
  final PourRules rules;

  GameMove? quickHint(List<TubeModel> tubes) {
    for (final pair in _orderedPairs(tubes)) {
      final result = rules.executePour(
        tubes: tubes,
        sourceTubeId: pair.$1.id,
        destinationTubeId: pair.$2.id,
        currentMoveCount: 0,
      );
      if (result.isSuccess) return result.move;
    }
    return null;
  }

  List<GameMove>? solve(List<TubeModel> initial) {
    final queue = <_SearchNode>[_SearchNode(initial, const [])];
    final visited = <String>{_key(initial)};
    var cursor = 0;

    while (cursor < queue.length && visited.length <= maxNodes) {
      final node = queue[cursor++];
      if (_isSolved(node.tubes)) return node.moves;
      for (final pair in _orderedPairs(node.tubes)) {
        final result = rules.executePour(
          tubes: node.tubes,
          sourceTubeId: pair.$1.id,
          destinationTubeId: pair.$2.id,
          currentMoveCount: node.moves.length,
        );
        if (!result.isSuccess) continue;
        final key = _key(result.tubes);
        if (!visited.add(key)) continue;
        queue.add(_SearchNode(result.tubes, [...node.moves, result.move!]));
      }
    }
    return null;
  }

  List<(TubeModel, TubeModel)> _orderedPairs(List<TubeModel> tubes) {
    final pairs = <(TubeModel, TubeModel)>[];
    for (final source in tubes) {
      for (final destination in tubes) {
        if (source.id == destination.id) continue;
        pairs.add((source, destination));
      }
    }
    pairs.sort((first, second) {
      final firstScore = _moveScore(first.$1, first.$2);
      final secondScore = _moveScore(second.$1, second.$2);
      return secondScore.compareTo(firstScore);
    });
    return pairs;
  }

  int _moveScore(TubeModel source, TubeModel destination) {
    var score = 0;
    if (!destination.isEmpty) score += 4;
    if (destination.liquids.length + source.topGroupSize ==
        destination.capacity) {
      score += 3;
    }
    if (source.liquids.length == source.topGroupSize) score -= 2;
    return score;
  }

  bool _isSolved(List<TubeModel> tubes) =>
      tubes.where((tube) => !tube.isEmpty).every((tube) => tube.isCompleted);

  String _key(List<TubeModel> tubes) {
    final canonical =
        tubes
            .map((tube) => tube.liquids.map((color) => color.index).join(','))
            .toList()
          ..sort();
    return canonical.join('|');
  }
}

class _SearchNode {
  const _SearchNode(this.tubes, this.moves);
  final List<TubeModel> tubes;
  final List<GameMove> moves;
}
