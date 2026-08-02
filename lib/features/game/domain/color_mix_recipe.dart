import 'liquid_color_id.dart';

class ColorMixRecipe {
  const ColorMixRecipe({
    required this.first,
    required this.second,
    required this.result,
  });

  factory ColorMixRecipe.fromJson(Map<String, Object?> json) => ColorMixRecipe(
    first: LiquidColorId.fromJson(json['first']! as String),
    second: LiquidColorId.fromJson(json['second']! as String),
    result: LiquidColorId.fromJson(json['result']! as String),
  );

  final LiquidColorId first;
  final LiquidColorId second;
  final LiquidColorId result;

  bool matches(LiquidColorId a, LiquidColorId b) =>
      (a == first && b == second) || (a == second && b == first);

  Map<String, Object?> toJson() => {
    'first': first.toJson(),
    'second': second.toJson(),
    'result': result.toJson(),
  };
}

