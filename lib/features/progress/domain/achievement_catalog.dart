import '../../game/domain/achievement_result.dart';

class AchievementInfo {
  const AchievementInfo({
    required this.id,
    required this.icon,
  });

  final AchievementId id;
  final String icon; // material icon name key for UI switch
}

abstract final class AchievementCatalog {
  static const all = <AchievementInfo>[
    AchievementInfo(id: AchievementId.perfectSort, icon: 'perfect'),
    AchievementInfo(id: AchievementId.underPar, icon: 'par'),
    AchievementInfo(id: AchievementId.noUndo, icon: 'undo'),
    AchievementInfo(id: AchievementId.noHint, icon: 'hint'),
    AchievementInfo(id: AchievementId.flowMaster, icon: 'flow'),
    AchievementInfo(id: AchievementId.newRecord, icon: 'record'),
    AchievementInfo(id: AchievementId.firstTry, icon: 'first'),
    AchievementInfo(id: AchievementId.noExtraTube, icon: 'tube'),
  ];
}
