import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/domain/liquid_color_id.dart';
import 'package:liquid_sort/features/game/domain/pour_rules.dart';
import 'package:liquid_sort/features/game/domain/puzzle_solver.dart';
import 'package:liquid_sort/features/game/domain/tube_model.dart';

void main() {
  test('quick hint returns a legal move without a graph search', () {
    final board = [
      TubeModel(
        id: 'a',
        liquids: const [LiquidColorId.red, LiquidColorId.blue],
      ),
      TubeModel(id: 'b', liquids: const []),
    ];

    final hint = const PuzzleSolver().quickHint(board);
    expect(hint, isNotNull);
    expect(hint!.sourceTubeId, 'a');
    expect(hint.destinationTubeId, 'b');
  });

  test('solver finds and verifies a solution for a sample puzzle', () {
    final initial = [
      TubeModel(
        id: 'a',
        liquids: const [
          LiquidColorId.red,
          LiquidColorId.blue,
          LiquidColorId.red,
          LiquidColorId.blue,
        ],
      ),
      TubeModel(
        id: 'b',
        liquids: const [
          LiquidColorId.blue,
          LiquidColorId.red,
          LiquidColorId.blue,
          LiquidColorId.red,
        ],
      ),
      TubeModel(id: 'c', liquids: const []),
      TubeModel(id: 'd', liquids: const []),
    ];
    final solution = const PuzzleSolver(maxNodes: 10000).solve(initial);

    expect(solution, isNotNull);
    expect(solution, isNotEmpty);

    var board = initial;
    for (final move in solution!) {
      final result = const PourRules().executePour(
        tubes: board,
        sourceTubeId: move.sourceTubeId,
        destinationTubeId: move.destinationTubeId,
        currentMoveCount: 0,
      );
      expect(result.isSuccess, isTrue);
      board = result.tubes;
    }
    expect(
      board.where((tube) => !tube.isEmpty).every((tube) => tube.isCompleted),
      isTrue,
    );
  });
}
