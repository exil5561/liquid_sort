import '../domain/color_mix_recipe.dart';
import '../domain/level_definition.dart';
import '../domain/level_validator.dart';
import '../domain/liquid_color_id.dart';
import '../domain/tube_model.dart';

class CampaignLevels {
  CampaignLevels._();

  static const orangeRecipe = ColorMixRecipe(
    first: LiquidColorId.red,
    second: LiquidColorId.yellow,
    result: LiquidColorId.orange,
  );
  static const greenRecipe = ColorMixRecipe(
    first: LiquidColorId.yellow,
    second: LiquidColorId.blue,
    result: LiquidColorId.green,
  );
  static const purpleRecipe = ColorMixRecipe(
    first: LiquidColorId.red,
    second: LiquidColorId.blue,
    result: LiquidColorId.purple,
  );

  static const _mixLevels = {
    5,
    7,
    9,
    12,
    15,
    18,
    21,
    24,
    27,
    30,
    33,
    36,
    39,
    42,
    45,
    48,
    50,
  };
  static const _hiddenLevels = {
    4,
    9,
    10,
    12,
    15,
    19,
    21,
    22,
    25,
    27,
    28,
    30,
    32,
    38,
    44,
    48,
    50,
  };
  static const _frozenLevels = {
    6,
    10,
    13,
    18,
    22,
    25,
    27,
    30,
    31,
    35,
    40,
    43,
    47,
    50,
  };
  static const _lockedLevels = {
    8,
    14,
    16,
    20,
    24,
    28,
    30,
    34,
    38,
    41,
    46,
    49,
    50,
  };
  static const _heatedLevels = {11, 17, 23, 26, 29, 30, 32, 36, 40, 44, 48, 50};
  static const _portalLevels = {14, 20, 32, 36, 40, 44, 48, 50};
  static const _bombLevels = {16, 20, 34, 38, 40, 46, 50};
  static const _valveLevels = {12, 24, 35, 41, 47, 50};
  static const _movingLevels = {25, 37, 43, 49, 50};
  static const _narrowLevels = {18, 28, 39, 45, 50};

  static final List<LevelDefinition> all = _buildLevels();

  static LevelDefinition byNumber(int number) =>
      all.firstWhere((level) => level.number == number);

  static List<LevelDefinition> _buildLevels() {
    const recipes = <_LevelRecipe>[
      _LevelRecipe(2, 0, 6),
      _LevelRecipe(2, 1, 7),
      _LevelRecipe(3, 0, 9),
      _LevelRecipe(3, 1, 10),
      _LevelRecipe(3, 2, 11),
      _LevelRecipe(4, 0, 13),
      _LevelRecipe(4, 1, 14),
      _LevelRecipe(4, 2, 15),
      _LevelRecipe(4, 3, 16),
      _LevelRecipe(4, 4, 17),
      _LevelRecipe(5, 0, 19),
      _LevelRecipe(5, 1, 20),
      _LevelRecipe(5, 2, 21),
      _LevelRecipe(5, 3, 22),
      _LevelRecipe(5, 4, 23),
      _LevelRecipe(5, 5, 24),
      _LevelRecipe(5, 6, 25),
      _LevelRecipe(6, 0, 27),
      _LevelRecipe(6, 1, 28),
      _LevelRecipe(6, 2, 29),
      _LevelRecipe(6, 3, 30),
      _LevelRecipe(6, 4, 31),
      _LevelRecipe(6, 5, 32),
      _LevelRecipe(6, 6, 33),
      _LevelRecipe(6, 7, 34),
      _LevelRecipe(7, 0, 36),
      _LevelRecipe(7, 1, 37),
      _LevelRecipe(7, 2, 38),
      _LevelRecipe(7, 3, 39),
      _LevelRecipe(7, 4, 40),
      _LevelRecipe(7, 5, 41),
      _LevelRecipe(7, 6, 42),
      _LevelRecipe(7, 7, 43),
      _LevelRecipe(7, 8, 44),
      _LevelRecipe(7, 9, 45),
      _LevelRecipe(8, 0, 47),
      _LevelRecipe(8, 1, 48),
      _LevelRecipe(8, 2, 49),
      _LevelRecipe(8, 3, 50),
      _LevelRecipe(8, 4, 51),
      _LevelRecipe(8, 5, 52),
      _LevelRecipe(8, 6, 53),
      _LevelRecipe(9, 0, 55),
      _LevelRecipe(9, 1, 56),
      _LevelRecipe(9, 2, 57),
      _LevelRecipe(9, 3, 58),
      _LevelRecipe(9, 4, 59),
      _LevelRecipe(9, 5, 60),
      _LevelRecipe(9, 6, 61),
      _LevelRecipe(10, 0, 64),
    ];

    final levels = <LevelDefinition>[];
    for (var index = 0; index < recipes.length; index++) {
      final number = index + 1;
      final level = _mixLevels.contains(number)
          ? _buildMixLevel(number)
          : _buildSortLevel(number, recipes[index]);
      levels.add(level);
    }

    assert(() {
      const validator = LevelValidator();
      for (final level in levels) {
        validator.validate(level);
      }
      return true;
    }());
    return List.unmodifiable(levels);
  }

  static LevelDefinition _buildSortLevel(int number, _LevelRecipe recipe) {
    const patterns = <List<int>>[
      [0, 1, 2, 3],
      [3, 1, 0, 2],
      [1, 3, 2, 0],
      [2, 0, 3, 1],
    ];
    final pattern = patterns[(number - 1) % patterns.length];
    final tubeStride = recipe.colorCount.isEven
        ? recipe.colorCount - 1
        : (number.isEven ? 2 : 1);
    final colors = LiquidColorId.values.take(recipe.colorCount).toList();
    final tubes = <TubeModel>[];
    for (var tubeIndex = 0; tubeIndex < recipe.colorCount; tubeIndex++) {
      final liquids = <LiquidColorId>[];
      for (final step in pattern) {
        final colorIndex =
            (tubeIndex * tubeStride + step + recipe.offset) % recipe.colorCount;
        liquids.add(colors[colorIndex]);
      }
      tubes.add(TubeModel(id: 't${tubeIndex + 1}', liquids: liquids));
    }
    tubes.add(TubeModel(id: 't${tubes.length + 1}', liquids: const []));
    tubes.add(TubeModel(id: 't${tubes.length + 1}', liquids: const []));
    return _withMechanics(
      number: number,
      parMoves: recipe.parMoves,
      tubes: tubes,
      mixRecipes: const [],
    );
  }

  static LevelDefinition _buildMixLevel(int number) {
    final recipeCount = number <= 5
        ? 1
        : number <= 7
        ? 2
        : 3;
    final tubes = <TubeModel>[
      TubeModel(
        id: 't1',
        liquids: const [
          LiquidColorId.cyan,
          LiquidColorId.cyan,
          LiquidColorId.red,
          LiquidColorId.red,
        ],
      ),
      TubeModel(
        id: 't2',
        liquids: const [LiquidColorId.cyan, LiquidColorId.cyan],
      ),
      TubeModel(
        id: 't3',
        liquids: const [LiquidColorId.yellow, LiquidColorId.yellow],
      ),
      if (recipeCount >= 2)
        TubeModel(
          id: 't4',
          liquids: const [LiquidColorId.yellow, LiquidColorId.yellow],
        ),
      if (recipeCount >= 2)
        TubeModel(
          id: 't5',
          liquids: const [LiquidColorId.blue, LiquidColorId.blue],
        ),
      if (recipeCount >= 3)
        TubeModel(
          id: 't6',
          liquids: const [LiquidColorId.red, LiquidColorId.red],
        ),
      if (recipeCount >= 3)
        TubeModel(
          id: 't7',
          liquids: const [LiquidColorId.blue, LiquidColorId.blue],
        ),
    ];
    tubes.add(TubeModel(id: 't${tubes.length + 1}', liquids: const []));
    tubes.add(TubeModel(id: 't${tubes.length + 1}', liquids: const []));
    final recipes = <ColorMixRecipe>[
      orangeRecipe,
      if (recipeCount >= 2) greenRecipe,
      if (recipeCount >= 3) purpleRecipe,
    ];
    final basePar = switch (recipeCount) {
      1 => 4,
      2 => 7,
      _ => 10,
    };
    return _withMechanics(
      number: number,
      parMoves: basePar + (number ~/ 10),
      tubes: tubes,
      mixRecipes: recipes,
      showMixGuide: number <= 9,
    );
  }

  static LevelDefinition _withMechanics({
    required int number,
    required int parMoves,
    required List<TubeModel> tubes,
    required List<ColorMixRecipe> mixRecipes,
    bool showMixGuide = false,
  }) {
    final isBoss = number % 10 == 0;
    final levelTubes = [...tubes];
    final firstEmptyId = levelTubes[levelTubes.length - 2].id;
    final lastEmptyId = levelTubes.last.id;
    final heatCapacity = _heatCapacityFor(number);
    String? heatedTubeId;
    if (heatCapacity > 0) {
      const wasteColors = [
        LiquidColorId.pink,
        LiquidColorId.lime,
        LiquidColorId.brown,
      ];
      levelTubes.insert(
        levelTubes.length - 2,
        TubeModel(
          id: 'waste-$number',
          liquids: wasteColors.take(heatCapacity).toList(),
        ),
      );
      heatedTubeId = 'heater-$number';
      levelTubes.add(TubeModel(id: heatedTubeId, liquids: const []));
    }
    final valveTubeId = _valveLevels.contains(number) ? 'valve-$number' : null;
    if (valveTubeId != null) {
      levelTubes.add(TubeModel(id: valveTubeId, liquids: const []));
    }
    if (_narrowLevels.contains(number)) {
      final narrowIndex = levelTubes.indexWhere(
        (tube) => tube.id == lastEmptyId,
      );
      if (narrowIndex != -1) {
        levelTubes[narrowIndex] = levelTubes[narrowIndex].copyWith(capacity: 2);
      }
    }
    return LevelDefinition(
      number: number,
      parMoves: parMoves,
      tubes: levelTubes,
      label: number <= 3
          ? 'Temel Eğitim'
          : isBoss
          ? 'Boss Deneyi'
          : _narrowLevels.contains(number)
          ? 'Dar Tüp Laboratuvarı'
          : _portalLevels.contains(number)
          ? 'Portal Laboratuvarı'
          : _bombLevels.contains(number)
          ? 'Bomba Protokolü'
          : _movingLevels.contains(number)
          ? 'Hareketli Düzen'
          : mixRecipes.isNotEmpty
          ? 'Renk Laboratuvarı'
          : null,
      hiddenTubeId: _hiddenLevels.contains(number) ? 't1' : null,
      frozenTubeId: _frozenLevels.contains(number)
          ? (number == 30 ? 't7' : firstEmptyId)
          : null,
      frozenForMoves: _frozenLevels.contains(number)
          ? (number >= 18 ? 2 : 1)
          : 0,
      lockedTubeId: _lockedLevels.contains(number)
          ? (number == 30 ? 't6' : lastEmptyId)
          : null,
      unlockAfterCompletedTubes: _lockedLevels.contains(number) ? 1 : 0,
      heatedTubeId: heatedTubeId,
      heatUnitCapacity: heatCapacity,
      showHeatGuide: number == 11,
      portalTubeA: _portalLevels.contains(number) ? firstEmptyId : null,
      portalTubeB: _portalLevels.contains(number) ? lastEmptyId : null,
      valveTubeId: valveTubeId,
      bombTubeId: _bombLevels.contains(number) ? 't1' : null,
      bombMoveLimit: _bombLevels.contains(number) ? parMoves - 3 : null,
      movingEveryMoves: _movingLevels.contains(number) ? 3 : 0,
      mixRecipes: mixRecipes,
      showMixGuide: showMixGuide,
      isBoss: isBoss,
      moveLimit: isBoss ? parMoves + 4 : null,
    );
  }

  static int _heatCapacityFor(int number) {
    if (!_heatedLevels.contains(number)) return 0;
    if (number == 11) return 1;
    if (number == 17 || number == 23 || number == 30) return 2;
    return 3;
  }
}

class _LevelRecipe {
  const _LevelRecipe(this.colorCount, this.offset, this.parMoves);

  final int colorCount;
  final int offset;
  final int parMoves;
}
