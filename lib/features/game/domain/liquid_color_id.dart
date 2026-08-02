enum LiquidColorId {
  red,
  blue,
  purple,
  yellow,
  green,
  orange,
  pink,
  cyan,
  lime,
  brown;

  static LiquidColorId fromJson(String value) =>
      LiquidColorId.values.firstWhere((color) => color.name == value);

  String toJson() => name;
}
