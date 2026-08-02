import 'package:flutter/widgets.dart';

import '../features/game/domain/achievement_result.dart';
import '../features/game/domain/liquid_color_id.dart';
import '../features/game/domain/mechanic_intro.dart';
import '../features/settings/domain/game_difficulty.dart';
import 'app_localizations.dart';

export 'app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

extension MechanicIntroL10n on MechanicIntro {
  String title(AppLocalizations l10n) => switch (kind) {
    MechanicKind.basics => l10n.mechanicBasicsTitle,
    MechanicKind.hidden => l10n.mechanicHiddenTitle,
    MechanicKind.mix => l10n.mechanicMixTitle,
    MechanicKind.frozen => l10n.mechanicFrozenTitle,
    MechanicKind.locked => l10n.mechanicLockedTitle,
    MechanicKind.heated => l10n.mechanicHeatedTitle,
    MechanicKind.valve => l10n.mechanicValveTitle,
    MechanicKind.portal => l10n.mechanicPortalTitle,
    MechanicKind.bomb => l10n.mechanicBombTitle,
    MechanicKind.narrow => l10n.mechanicNarrowTitle,
    MechanicKind.moving => l10n.mechanicMovingTitle,
    MechanicKind.boss => l10n.mechanicBossTitle,
  };

  String headline(AppLocalizations l10n) => switch (kind) {
    MechanicKind.basics => l10n.mechanicBasicsHeadline,
    MechanicKind.hidden => l10n.mechanicHiddenHeadline,
    MechanicKind.mix => l10n.mechanicMixHeadline,
    MechanicKind.frozen => l10n.mechanicFrozenHeadline,
    MechanicKind.locked => l10n.mechanicLockedHeadline,
    MechanicKind.heated => l10n.mechanicHeatedHeadline,
    MechanicKind.valve => l10n.mechanicValveHeadline,
    MechanicKind.portal => l10n.mechanicPortalHeadline,
    MechanicKind.bomb => l10n.mechanicBombHeadline,
    MechanicKind.narrow => l10n.mechanicNarrowHeadline,
    MechanicKind.moving => l10n.mechanicMovingHeadline,
    MechanicKind.boss => l10n.mechanicBossHeadline,
  };

  String body(AppLocalizations l10n) => switch (kind) {
    MechanicKind.basics => l10n.mechanicBasicsBody,
    MechanicKind.hidden => l10n.mechanicHiddenBody,
    MechanicKind.mix => l10n.mechanicMixBody,
    MechanicKind.frozen => l10n.mechanicFrozenBody,
    MechanicKind.locked => l10n.mechanicLockedBody,
    MechanicKind.heated => l10n.mechanicHeatedBody,
    MechanicKind.valve => l10n.mechanicValveBody,
    MechanicKind.portal => l10n.mechanicPortalBody,
    MechanicKind.bomb => l10n.mechanicBombBody,
    MechanicKind.narrow => l10n.mechanicNarrowBody,
    MechanicKind.moving => l10n.mechanicMovingBody,
    MechanicKind.boss => l10n.mechanicBossBody,
  };

  String tip(AppLocalizations l10n) => switch (kind) {
    MechanicKind.basics => l10n.mechanicBasicsTip,
    MechanicKind.hidden => l10n.mechanicHiddenTip,
    MechanicKind.mix => l10n.mechanicMixTip,
    MechanicKind.frozen => l10n.mechanicFrozenTip,
    MechanicKind.locked => l10n.mechanicLockedTip,
    MechanicKind.heated => l10n.mechanicHeatedTip,
    MechanicKind.valve => l10n.mechanicValveTip,
    MechanicKind.portal => l10n.mechanicPortalTip,
    MechanicKind.bomb => l10n.mechanicBombTip,
    MechanicKind.narrow => l10n.mechanicNarrowTip,
    MechanicKind.moving => l10n.mechanicMovingTip,
    MechanicKind.boss => l10n.mechanicBossTip,
  };

  String caption(AppLocalizations l10n) => switch (kind) {
    MechanicKind.basics => l10n.mechanicBasicsCaption,
    MechanicKind.hidden => l10n.mechanicHiddenCaption,
    MechanicKind.mix => l10n.mechanicMixCaption,
    MechanicKind.frozen => l10n.mechanicFrozenCaption,
    MechanicKind.locked => l10n.mechanicLockedCaption,
    MechanicKind.heated => l10n.mechanicHeatedCaption,
    MechanicKind.valve => l10n.mechanicValveCaption,
    MechanicKind.portal => l10n.mechanicPortalCaption,
    MechanicKind.bomb => l10n.mechanicBombCaption,
    MechanicKind.narrow => l10n.mechanicNarrowCaption,
    MechanicKind.moving => l10n.mechanicMovingCaption,
    MechanicKind.boss => l10n.mechanicBossCaption,
  };
}

extension AchievementL10n on AchievementId {
  String title(AppLocalizations l10n) => switch (this) {
    AchievementId.perfectSort => l10n.achievementPerfectSort,
    AchievementId.underPar => l10n.achievementUnderPar,
    AchievementId.noUndo => l10n.achievementNoUndo,
    AchievementId.noHint => l10n.achievementNoHint,
    AchievementId.flowMaster => l10n.achievementFlowMaster,
    AchievementId.newRecord => l10n.achievementNewRecord,
    AchievementId.firstTry => l10n.achievementFirstTry,
    AchievementId.noExtraTube => l10n.achievementNoExtraTube,
  };

  String description(AppLocalizations l10n) => switch (this) {
    AchievementId.perfectSort => l10n.achievementPerfectSortDesc,
    AchievementId.underPar => l10n.achievementUnderParDesc,
    AchievementId.noUndo => l10n.achievementNoUndoDesc,
    AchievementId.noHint => l10n.achievementNoHintDesc,
    AchievementId.flowMaster => l10n.achievementFlowMasterDesc,
    AchievementId.newRecord => l10n.achievementNewRecordDesc,
    AchievementId.firstTry => l10n.achievementFirstTryDesc,
    AchievementId.noExtraTube => l10n.achievementNoExtraTubeDesc,
  };
}

extension DifficultyL10n on GameDifficulty {
  String label(AppLocalizations l10n) => switch (this) {
    GameDifficulty.easy => l10n.difficultyEasy,
    GameDifficulty.normal => l10n.difficultyNormal,
    GameDifficulty.hard => l10n.difficultyHard,
  };

  String description(AppLocalizations l10n) => switch (this) {
    GameDifficulty.easy => l10n.difficultyEasyDesc,
    GameDifficulty.normal => l10n.difficultyNormalDesc,
    GameDifficulty.hard => l10n.difficultyHardDesc,
  };
}

extension LiquidColorL10n on LiquidColorId {
  String localizedName(AppLocalizations l10n) => switch (this) {
    LiquidColorId.red => l10n.colorRed,
    LiquidColorId.blue => l10n.colorBlue,
    LiquidColorId.purple => l10n.colorPurple,
    LiquidColorId.yellow => l10n.colorYellow,
    LiquidColorId.green => l10n.colorGreen,
    LiquidColorId.orange => l10n.colorOrange,
    LiquidColorId.pink => l10n.colorPink,
    LiquidColorId.cyan => l10n.colorCyan,
    LiquidColorId.lime => l10n.colorLime,
    LiquidColorId.brown => l10n.colorBrown,
  };
}
