import 'color_mix_recipe.dart';
import 'tube_model.dart';

class LevelDefinition {
  LevelDefinition({
    required this.number,
    required this.parMoves,
    required List<TubeModel> tubes,
    this.label,
    this.hiddenTubeId,
    this.frozenTubeId,
    this.frozenForMoves = 0,
    this.lockedTubeId,
    this.unlockAfterCompletedTubes = 0,
    this.heatedTubeId,
    this.heatUnitCapacity = 0,
    this.showHeatGuide = false,
    this.portalTubeA,
    this.portalTubeB,
    this.valveTubeId,
    this.bombTubeId,
    this.bombMoveLimit,
    this.movingEveryMoves = 0,
    List<ColorMixRecipe> mixRecipes = const [],
    this.showMixGuide = false,
    this.isBoss = false,
    this.moveLimit,
  }) : tubes = List.unmodifiable(tubes),
       mixRecipes = List.unmodifiable(mixRecipes);

  factory LevelDefinition.fromJson(Map<String, Object?> json) =>
      LevelDefinition(
        number: json['number']! as int,
        parMoves: json['parMoves']! as int,
        tubes: (json['tubes']! as List<Object?>)
            .cast<Map<String, Object?>>()
            .map(TubeModel.fromJson)
            .toList(),
        label: json['label'] as String?,
        hiddenTubeId: json['hiddenTubeId'] as String?,
        frozenTubeId: json['frozenTubeId'] as String?,
        frozenForMoves: json['frozenForMoves'] as int? ?? 0,
        lockedTubeId: json['lockedTubeId'] as String?,
        unlockAfterCompletedTubes:
            json['unlockAfterCompletedTubes'] as int? ?? 0,
        heatedTubeId: json['heatedTubeId'] as String?,
        heatUnitCapacity: json['heatUnitCapacity'] as int? ?? 0,
        showHeatGuide: json['showHeatGuide'] as bool? ?? false,
        portalTubeA: json['portalTubeA'] as String?,
        portalTubeB: json['portalTubeB'] as String?,
        valveTubeId: json['valveTubeId'] as String?,
        bombTubeId: json['bombTubeId'] as String?,
        bombMoveLimit: json['bombMoveLimit'] as int?,
        movingEveryMoves: json['movingEveryMoves'] as int? ?? 0,
        mixRecipes: (json['mixRecipes'] as List<Object?>? ?? const [])
            .cast<Map<String, Object?>>()
            .map(ColorMixRecipe.fromJson)
            .toList(),
        showMixGuide: json['showMixGuide'] as bool? ?? false,
        isBoss: json['isBoss'] as bool? ?? false,
        moveLimit: json['moveLimit'] as int?,
      );

  final int number;
  final int parMoves;
  final List<TubeModel> tubes;
  final String? label;
  final String? hiddenTubeId;
  final String? frozenTubeId;
  final int frozenForMoves;
  final String? lockedTubeId;
  final int unlockAfterCompletedTubes;
  final String? heatedTubeId;
  final int heatUnitCapacity;
  final bool showHeatGuide;
  final String? portalTubeA;
  final String? portalTubeB;
  final String? valveTubeId;
  final String? bombTubeId;
  final int? bombMoveLimit;
  final int movingEveryMoves;
  final List<ColorMixRecipe> mixRecipes;
  final bool showMixGuide;
  final bool isBoss;
  final int? moveLimit;

  bool get hasNarrowTube => tubes.any((tube) => tube.isNarrow);

  LevelDefinition copyWith({
    int? number,
    int? parMoves,
    List<TubeModel>? tubes,
    String? label,
    String? hiddenTubeId,
    String? frozenTubeId,
    int? frozenForMoves,
    String? lockedTubeId,
    int? unlockAfterCompletedTubes,
    String? heatedTubeId,
    int? heatUnitCapacity,
    bool? showHeatGuide,
    String? portalTubeA,
    String? portalTubeB,
    String? valveTubeId,
    String? bombTubeId,
    int? bombMoveLimit,
    int? movingEveryMoves,
    List<ColorMixRecipe>? mixRecipes,
    bool? showMixGuide,
    bool? isBoss,
    int? moveLimit,
  }) => LevelDefinition(
    number: number ?? this.number,
    parMoves: parMoves ?? this.parMoves,
    tubes: tubes ?? this.tubes,
    label: label ?? this.label,
    hiddenTubeId: hiddenTubeId ?? this.hiddenTubeId,
    frozenTubeId: frozenTubeId ?? this.frozenTubeId,
    frozenForMoves: frozenForMoves ?? this.frozenForMoves,
    lockedTubeId: lockedTubeId ?? this.lockedTubeId,
    unlockAfterCompletedTubes:
        unlockAfterCompletedTubes ?? this.unlockAfterCompletedTubes,
    heatedTubeId: heatedTubeId ?? this.heatedTubeId,
    heatUnitCapacity: heatUnitCapacity ?? this.heatUnitCapacity,
    showHeatGuide: showHeatGuide ?? this.showHeatGuide,
    portalTubeA: portalTubeA ?? this.portalTubeA,
    portalTubeB: portalTubeB ?? this.portalTubeB,
    valveTubeId: valveTubeId ?? this.valveTubeId,
    bombTubeId: bombTubeId ?? this.bombTubeId,
    bombMoveLimit: bombMoveLimit ?? this.bombMoveLimit,
    movingEveryMoves: movingEveryMoves ?? this.movingEveryMoves,
    mixRecipes: mixRecipes ?? this.mixRecipes,
    showMixGuide: showMixGuide ?? this.showMixGuide,
    isBoss: isBoss ?? this.isBoss,
    moveLimit: moveLimit ?? this.moveLimit,
  );

  Map<String, Object?> toJson() => {
    'number': number,
    'parMoves': parMoves,
    'tubes': tubes.map((tube) => tube.toJson()).toList(),
    'label': label,
    'hiddenTubeId': hiddenTubeId,
    'frozenTubeId': frozenTubeId,
    'frozenForMoves': frozenForMoves,
    'lockedTubeId': lockedTubeId,
    'unlockAfterCompletedTubes': unlockAfterCompletedTubes,
    'heatedTubeId': heatedTubeId,
    'heatUnitCapacity': heatUnitCapacity,
    'showHeatGuide': showHeatGuide,
    'portalTubeA': portalTubeA,
    'portalTubeB': portalTubeB,
    'valveTubeId': valveTubeId,
    'bombTubeId': bombTubeId,
    'bombMoveLimit': bombMoveLimit,
    'movingEveryMoves': movingEveryMoves,
    'mixRecipes': mixRecipes.map((recipe) => recipe.toJson()).toList(),
    'showMixGuide': showMixGuide,
    'isBoss': isBoss,
    'moveLimit': moveLimit,
  };
}
