import 'package:flutter/material.dart';

import '../../features/game/domain/liquid_color_id.dart';

abstract final class AppColors {
  static const navy = Color(0xFF030817);
  static const navyLight = Color(0xFF09152B);
  static const panel = Color(0xF20A1327);
  static const panelLight = Color(0xF213223B);
  static const periwinkle = Color(0xFF168ED2);
  static const violet = Color(0xFF9229E8);
  static const cyan = Color(0xFF19C9E3);
  static const coral = Color(0xFFFF405C);
  static const mint = Color(0xFF4ED778);
  static const text = Color(0xFFF6F7FF);
  static const textMuted = Color(0xFFA7B0D2);
}

extension LiquidColorPresentation on LiquidColorId {
  LiquidStyle get style => switch (this) {
    LiquidColorId.red => const LiquidStyle(
      base: Color(0xFFF22137),
      highlight: Color(0xFFFF7582),
      dark: Color(0xFFA80E24),
      glow: Color(0xAAF22137),
      pattern: LiquidPattern.dots,
    ),
    LiquidColorId.blue => const LiquidStyle(
      base: Color(0xFF087BEA),
      highlight: Color(0xFF71BCFF),
      dark: Color(0xFF064799),
      glow: Color(0xAA087BEA),
      pattern: LiquidPattern.diagonal,
    ),
    LiquidColorId.purple => const LiquidStyle(
      base: Color(0xFF9127E8),
      highlight: Color(0xFFD681FF),
      dark: Color(0xFF50109A),
      glow: Color(0xAA9127E8),
      pattern: LiquidPattern.rings,
    ),
    LiquidColorId.yellow => const LiquidStyle(
      base: Color(0xFFFFB719),
      highlight: Color(0xFFFFE078),
      dark: Color(0xFFB06A00),
      glow: Color(0xAAFFB719),
      pattern: LiquidPattern.stars,
    ),
    LiquidColorId.green => const LiquidStyle(
      base: Color(0xFF42C83A),
      highlight: Color(0xFF9CF48A),
      dark: Color(0xFF1D7A18),
      glow: Color(0xAA42C83A),
      pattern: LiquidPattern.waves,
    ),
    LiquidColorId.orange => const LiquidStyle(
      base: Color(0xFFF0781C),
      highlight: Color(0xFFFFB267),
      dark: Color(0xFFA33D05),
      glow: Color(0xAAF0781C),
      pattern: LiquidPattern.crosses,
    ),
    LiquidColorId.pink => const LiquidStyle(
      base: Color(0xFFE73886),
      highlight: Color(0xFFFF8EC3),
      dark: Color(0xFF9A1551),
      glow: Color(0xAAE73886),
      pattern: LiquidPattern.dots,
    ),
    LiquidColorId.cyan => const LiquidStyle(
      base: Color(0xFF13C5D6),
      highlight: Color(0xFF80F4FF),
      dark: Color(0xFF087987),
      glow: Color(0xAA13C5D6),
      pattern: LiquidPattern.waves,
    ),
    LiquidColorId.lime => const LiquidStyle(
      base: Color(0xFFB9F227),
      highlight: Color(0xFFE4FF98),
      dark: Color(0xFF628C0A),
      glow: Color(0x99B9F227),
      pattern: LiquidPattern.diagonal,
    ),
    LiquidColorId.brown => const LiquidStyle(
      base: Color(0xFFB86B45),
      highlight: Color(0xFFE5AE91),
      dark: Color(0xFF713A25),
      glow: Color(0x88D48155),
      pattern: LiquidPattern.rings,
    ),
  };

  Color get color => style.base;
}

enum LiquidPattern { dots, diagonal, waves, stars, crosses, rings }

class LiquidStyle {
  const LiquidStyle({
    required this.base,
    required this.highlight,
    required this.dark,
    required this.glow,
    required this.pattern,
  });

  final Color base;
  final Color highlight;
  final Color dark;
  final Color glow;
  final LiquidPattern pattern;

  Color get bubbleHighlight => Color.lerp(highlight, Colors.white, .45)!;
  Color get completedGlow => Color.lerp(base, Colors.white, .22)!;
}
