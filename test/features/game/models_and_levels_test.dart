import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/data/campaign_levels.dart';
import 'package:liquid_sort/features/game/domain/game_state.dart';
import 'package:liquid_sort/features/game/domain/game_status.dart';
import 'package:liquid_sort/features/game/domain/level_definition.dart';
import 'package:liquid_sort/features/game/domain/level_validator.dart';
import 'package:liquid_sort/features/game/domain/liquid_color_id.dart';
import 'package:liquid_sort/features/game/domain/tube_model.dart';

void main() {
  test('tube completion requires four identical units', () {
    final completed = TubeModel(
      id: 'done',
      liquids: List.filled(4, LiquidColorId.cyan),
    );
    final partial = TubeModel(
      id: 'partial',
      liquids: List.filled(3, LiquidColorId.cyan),
    );

    expect(completed.isCompleted, isTrue);
    expect(partial.isCompleted, isFalse);
  });

  test('level completes when all non-empty tubes are completed', () {
    final game = GameState(
      currentLevel: 1,
      tubes: [
        TubeModel(id: 'a', liquids: List.filled(4, LiquidColorId.red)),
        TubeModel(id: 'b', liquids: const []),
      ],
      moveCount: 4,
      parMoves: 5,
      history: const [],
      status: GameStatus.playing,
    );

    expect(game.isSolved, isTrue);
  });

  test('tube and game state JSON round-trip', () {
    final original = GameState.fromLevel(CampaignLevels.byNumber(3));
    final restored = GameState.fromJson(original.toJson());

    expect(restored.currentLevel, original.currentLevel);
    expect(restored.tubes, original.tubes);
    expect(restored.moveCount, original.moveCount);
    expect(restored.status, original.status);
  });

  test('all thirty campaign levels pass strict validation', () {
    const validator = LevelValidator();
    expect(CampaignLevels.all, hasLength(30));
    for (final level in CampaignLevels.all) {
      expect(() => validator.validate(level), returnsNormally);
    }
  });

  test('validator rejects incorrect color totals', () {
    final invalid = LevelDefinition(
      number: 99,
      parMoves: 3,
      tubes: [
        TubeModel(
          id: 'a',
          liquids: const [LiquidColorId.red, LiquidColorId.red],
        ),
        TubeModel(id: 'b', liquids: const []),
      ],
    );

    expect(
      () => const LevelValidator().validate(invalid),
      throwsA(isA<LevelValidationException>()),
    );
  });
}
