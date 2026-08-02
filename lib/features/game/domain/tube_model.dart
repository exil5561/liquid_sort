import 'liquid_color_id.dart';

class TubeModel {
  TubeModel({
    required this.id,
    this.capacity = 4,
    required List<LiquidColorId> liquids,
  }) : liquids = List.unmodifiable(liquids);

  factory TubeModel.fromJson(Map<String, Object?> json) => TubeModel(
    id: json['id']! as String,
    capacity: json['capacity']! as int,
    liquids: (json['liquids']! as List<Object?>)
        .cast<String>()
        .map(LiquidColorId.fromJson)
        .toList(),
  );

  final String id;
  final int capacity;

  /// Liquid units are always stored from bottom to top.
  final List<LiquidColorId> liquids;

  bool get isEmpty => liquids.isEmpty;
  bool get isFull => liquids.length == capacity;
  int get freeCapacity => capacity - liquids.length;
  LiquidColorId? get topColor => isEmpty ? null : liquids.last;
  bool get isUniform =>
      isEmpty || liquids.every((color) => color == liquids.first);
  /// Narrow buffer tubes (capacity < 4) are temporary storage only and never
  /// count as completed even when filled with one color.
  bool get isCompleted => isFull && isUniform && capacity >= 4;
  bool get isNarrow => capacity < 4;

  int get topGroupSize {
    if (isEmpty) return 0;
    var count = 0;
    for (var index = liquids.length - 1; index >= 0; index--) {
      if (liquids[index] != topColor) break;
      count++;
    }
    return count;
  }

  TubeModel copyWith({
    String? id,
    int? capacity,
    List<LiquidColorId>? liquids,
  }) => TubeModel(
    id: id ?? this.id,
    capacity: capacity ?? this.capacity,
    liquids: liquids ?? this.liquids,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'capacity': capacity,
    'liquids': liquids.map((color) => color.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TubeModel &&
          id == other.id &&
          capacity == other.capacity &&
          _listEquals(liquids, other.liquids);

  @override
  int get hashCode => Object.hash(id, capacity, Object.hashAll(liquids));
}

bool _listEquals<T>(List<T> first, List<T> second) {
  if (first.length != second.length) return false;
  for (var index = 0; index < first.length; index++) {
    if (first[index] != second[index]) return false;
  }
  return true;
}
