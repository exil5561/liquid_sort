import 'liquid_color_id.dart';
import 'tube_model.dart';

class GameMove {
  GameMove({
    required this.sourceTubeId,
    required this.destinationTubeId,
    required this.color,
    required this.amount,
    required List<TubeModel> beforeTubes,
    required this.beforeMoveCount,
    this.mixedWith,
    this.mixedColor,
    this.evaporated = false,
    this.portalExitTubeId,
  }) : beforeTubes = List.unmodifiable(beforeTubes);

  factory GameMove.fromJson(Map<String, Object?> json) => GameMove(
    sourceTubeId: json['sourceTubeId']! as String,
    destinationTubeId: json['destinationTubeId']! as String,
    color: LiquidColorId.fromJson(json['color']! as String),
    amount: json['amount']! as int,
    beforeTubes: (json['beforeTubes']! as List<Object?>)
        .cast<Map<String, Object?>>()
        .map(TubeModel.fromJson)
        .toList(),
    beforeMoveCount: json['beforeMoveCount']! as int,
    mixedWith: json['mixedWith'] == null
        ? null
        : LiquidColorId.fromJson(json['mixedWith']! as String),
    mixedColor: json['mixedColor'] == null
        ? null
        : LiquidColorId.fromJson(json['mixedColor']! as String),
    evaporated: json['evaporated'] as bool? ?? false,
    portalExitTubeId: json['portalExitTubeId'] as String?,
  );

  final String sourceTubeId;
  final String destinationTubeId;
  final LiquidColorId color;
  final int amount;
  final List<TubeModel> beforeTubes;
  final int beforeMoveCount;
  final LiquidColorId? mixedWith;
  final LiquidColorId? mixedColor;
  final bool evaporated;
  final String? portalExitTubeId;

  bool get createdMixedColor => mixedColor != null;

  Map<String, Object?> toJson() => {
    'sourceTubeId': sourceTubeId,
    'destinationTubeId': destinationTubeId,
    'color': color.toJson(),
    'amount': amount,
    'beforeTubes': beforeTubes.map((tube) => tube.toJson()).toList(),
    'beforeMoveCount': beforeMoveCount,
    'mixedWith': mixedWith?.toJson(),
    'mixedColor': mixedColor?.toJson(),
    'evaporated': evaporated,
    'portalExitTubeId': portalExitTubeId,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameMove &&
          sourceTubeId == other.sourceTubeId &&
          destinationTubeId == other.destinationTubeId &&
          color == other.color &&
          amount == other.amount &&
          beforeMoveCount == other.beforeMoveCount &&
          mixedWith == other.mixedWith &&
          mixedColor == other.mixedColor &&
          evaporated == other.evaporated &&
          portalExitTubeId == other.portalExitTubeId &&
          _tubeListsEqual(beforeTubes, other.beforeTubes);

  @override
  int get hashCode => Object.hash(
    sourceTubeId,
    destinationTubeId,
    color,
    amount,
    beforeMoveCount,
    mixedWith,
    mixedColor,
    evaporated,
    portalExitTubeId,
    Object.hashAll(beforeTubes),
  );
}

bool _tubeListsEqual(List<TubeModel> first, List<TubeModel> second) {
  if (first.length != second.length) return false;
  for (var index = 0; index < first.length; index++) {
    if (first[index] != second[index]) return false;
  }
  return true;
}
