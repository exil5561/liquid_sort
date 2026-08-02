import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/domain/liquid_color_id.dart';
import 'package:liquid_sort/features/game/domain/pour_result.dart';
import 'package:liquid_sort/features/game/domain/pour_rules.dart';
import 'package:liquid_sort/features/game/domain/tube_model.dart';

void main() {
  const rules = PourRules();

  TubeModel tube(String id, List<LiquidColorId> liquids) =>
      TubeModel(id: id, liquids: liquids);

  group('PourRules', () {
    test('moves into an empty tube', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [LiquidColorId.red, LiquidColorId.blue]),
          tube('b', []),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.isSuccess, isTrue);
      expect(result.tubes[0].liquids, [LiquidColorId.red]);
      expect(result.tubes[1].liquids, [LiquidColorId.blue]);
    });

    test('moves onto the same top color', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [LiquidColorId.red, LiquidColorId.blue]),
          tube('b', [LiquidColorId.yellow, LiquidColorId.blue]),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 4,
      );

      expect(result.isSuccess, isTrue);
      expect(result.tubes[1].liquids.last, LiquidColorId.blue);
      expect(result.move!.beforeMoveCount, 4);
    });

    test('rejects a different destination color', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [LiquidColorId.blue]),
          tube('b', [LiquidColorId.red]),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.failure, PourFailure.colorMismatch);
    });

    test('rejects a full destination tube', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [LiquidColorId.blue, LiquidColorId.red]),
          tube('b', List.filled(4, LiquidColorId.red)),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.failure, PourFailure.fullDestination);
    });

    test('rejects an empty source', () {
      final result = rules.executePour(
        tubes: [tube('a', []), tube('b', [])],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.failure, PourFailure.emptySource);
    });

    test('rejects selecting the same tube twice', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [LiquidColorId.red]),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'a',
        currentMoveCount: 0,
      );

      expect(result.failure, PourFailure.sameTube);
    });

    test('moves the largest contiguous top group', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [
            LiquidColorId.blue,
            LiquidColorId.blue,
            LiquidColorId.red,
            LiquidColorId.red,
          ]),
          tube('b', []),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.move!.amount, 2);
      expect(result.tubes[1].liquids, [LiquidColorId.red, LiquidColorId.red]);
    });

    test('limits a contiguous group by free capacity', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [
            LiquidColorId.blue,
            LiquidColorId.red,
            LiquidColorId.red,
            LiquidColorId.red,
          ]),
          tube('b', [
            LiquidColorId.yellow,
            LiquidColorId.red,
            LiquidColorId.red,
          ]),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.move!.amount, 1);
      expect(result.tubes[1].isFull, isTrue);
    });

    test('does not mutate the input list', () {
      final source = tube('a', [LiquidColorId.blue, LiquidColorId.red]);
      final destination = tube('b', []);
      final input = [source, destination];
      rules.executePour(
        tubes: input,
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(input[0], same(source));
      expect(input[1], same(destination));
      expect(source.liquids.length, 2);
      expect(destination.liquids, isEmpty);
    });

    test('rejects moving an already uniform stack to an empty tube', () {
      final result = rules.executePour(
        tubes: [
          tube('a', [LiquidColorId.red, LiquidColorId.red]),
          tube('b', []),
        ],
        sourceTubeId: 'a',
        destinationTubeId: 'b',
        currentMoveCount: 0,
      );

      expect(result.failure, PourFailure.uselessMove);
    });
  });
}
