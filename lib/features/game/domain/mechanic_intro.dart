import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import 'level_definition.dart';

enum MechanicKind {
  basics,
  hidden,
  mix,
  frozen,
  locked,
  heated,
  valve,
  portal,
  bomb,
  narrow,
  moving,
  boss,
}

class MechanicIntro {
  const MechanicIntro({
    required this.kind,
    required this.icon,
    required this.accent,
    this.imageAsset,
  });

  final MechanicKind kind;
  final IconData icon;
  final Color accent;
  final String? imageAsset;

  String get storageKey => kind.name;
}

abstract final class MechanicIntros {
  static const all = <MechanicIntro>[
    MechanicIntro(
      kind: MechanicKind.basics,
      icon: Icons.touch_app_rounded,
      accent: AppColors.cyan,
      imageAsset: 'assets/images/premium_tube_showcase.png',
    ),
    MechanicIntro(
      kind: MechanicKind.hidden,
      icon: Icons.visibility_off_rounded,
      accent: Color(0xFF8AA0C8),
    ),
    MechanicIntro(
      kind: MechanicKind.mix,
      icon: Icons.science_rounded,
      accent: AppColors.mint,
      imageAsset: 'assets/images/special_mechanics_showcase.png',
    ),
    MechanicIntro(
      kind: MechanicKind.frozen,
      icon: Icons.ac_unit_rounded,
      accent: Color(0xFF7EC8FF),
    ),
    MechanicIntro(
      kind: MechanicKind.locked,
      icon: Icons.lock_rounded,
      accent: Color(0xFFFFC34A),
    ),
    MechanicIntro(
      kind: MechanicKind.heated,
      icon: Icons.local_fire_department_rounded,
      accent: Color(0xFFFF7A1A),
    ),
    MechanicIntro(
      kind: MechanicKind.valve,
      icon: Icons.arrow_downward_rounded,
      accent: Color(0xFFFFC34A),
    ),
    MechanicIntro(
      kind: MechanicKind.portal,
      icon: Icons.sync_alt_rounded,
      accent: AppColors.cyan,
    ),
    MechanicIntro(
      kind: MechanicKind.bomb,
      icon: Icons.timer_rounded,
      accent: AppColors.coral,
    ),
    MechanicIntro(
      kind: MechanicKind.narrow,
      icon: Icons.compress_rounded,
      accent: Color(0xFFFF8A5B),
    ),
    MechanicIntro(
      kind: MechanicKind.moving,
      icon: Icons.swap_horiz_rounded,
      accent: AppColors.violet,
    ),
    MechanicIntro(
      kind: MechanicKind.boss,
      icon: Icons.local_fire_department_rounded,
      accent: AppColors.coral,
      imageAsset: 'assets/images/final_reactor_boss.png',
    ),
  ];

  static MechanicIntro byKind(MechanicKind kind) =>
      all.firstWhere((intro) => intro.kind == kind);

  static List<MechanicIntro> forLevel(LevelDefinition level) {
    final kinds = <MechanicKind>[];
    if (level.number == 1) kinds.add(MechanicKind.basics);
    if (level.hiddenTubeId != null) kinds.add(MechanicKind.hidden);
    if (level.mixRecipes.isNotEmpty) kinds.add(MechanicKind.mix);
    if (level.frozenTubeId != null) kinds.add(MechanicKind.frozen);
    if (level.lockedTubeId != null) kinds.add(MechanicKind.locked);
    if (level.heatedTubeId != null) kinds.add(MechanicKind.heated);
    if (level.valveTubeId != null) kinds.add(MechanicKind.valve);
    if (level.portalTubeA != null) kinds.add(MechanicKind.portal);
    if (level.bombTubeId != null) kinds.add(MechanicKind.bomb);
    if (level.hasNarrowTube) kinds.add(MechanicKind.narrow);
    if (level.movingEveryMoves > 0) kinds.add(MechanicKind.moving);
    if (level.isBoss) kinds.add(MechanicKind.boss);

    return [for (final kind in kinds) byKind(kind)];
  }
}
