// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => '색을 정렬하고 마음을 비우세요.';

  @override
  String get back => '뒤로';

  @override
  String get cancel => '취소';

  @override
  String get play => '플레이';

  @override
  String get settings => '설정';

  @override
  String get home => '홈';

  @override
  String get levels => '레벨';

  @override
  String get collection => '컬렉션';

  @override
  String get achievements => '업적';

  @override
  String get continueLabel => '계속';

  @override
  String get pause => '일시정지';

  @override
  String get close => '닫기';

  @override
  String get free => '무료';

  @override
  String get coin => '코인';

  @override
  String get coins => '코인';

  @override
  String get secondsShort => '초';

  @override
  String get moves => '이동';

  @override
  String get best => '최고';

  @override
  String get par => 'Par';

  @override
  String get locked => '잠김';

  @override
  String get ad => '광고';

  @override
  String get watchAd => '광고 보기';

  @override
  String get claiming => '수령 중...';

  @override
  String get homeTagline => '똑똑하게 정렬하고 색을 섞어 보세요!';

  @override
  String get progressAndAchievements => '진행도 및 업적';

  @override
  String get progressTapHint => '탭: 통계 및 배지';

  @override
  String get dailyReward => '일일 보상';

  @override
  String get rewardReady => '보상 준비됨';

  @override
  String get comeTomorrow => '내일 다시';

  @override
  String get collectionSubtitle => '테마 둘러보기';

  @override
  String get premiumThemes => '프리미엄 테마';

  @override
  String get premiumThemesBody => '클래식, 갤럭시, 오션, 네온, 골든 에이지 테마가 여기서 해제됩니다.';

  @override
  String get playCta => '플레이';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString코인$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + 무료 힌트 $countString개';
  }

  @override
  String get levelMapTitle => '레벨 맵';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString레벨 클리어';
  }

  @override
  String get newExperimentsBanner => '새 실험\n포털 • 폭탄 • 밸브 • 리액터';

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsSubtitleAudio => '사운드 및 햅틱 제어';

  @override
  String get settingsSubtitleVisual => '색상, 패턴, 애니메이션';

  @override
  String get settingsSubtitleGeneral => '난이도 및 일반 설정';

  @override
  String get sectionAudioFeedback => '사운드 및 피드백';

  @override
  String get soundEffects => '효과음';

  @override
  String get soundEffectsSubtitle => '선택, 붓기, 성공 사운드';

  @override
  String get backgroundMusic => '배경음악';

  @override
  String get backgroundMusicSubtitle => '차분한 코스믹 앰비언트';

  @override
  String get haptics => '햅틱';

  @override
  String get hapticsSubtitle => '탭 시 가벼운 피드백';

  @override
  String get sectionVisual => '시각 설정';

  @override
  String get neonPalette => '네온 액체 팔레트';

  @override
  String get neonPaletteSubtitle => '게임에서 사용하는 선명한 네온 색';

  @override
  String get colorAccessibility => '색상 접근성';

  @override
  String get colorAccessibilitySubtitle => '액체에 미세한 패턴 추가';

  @override
  String get reducedAnimations => '애니메이션 축소';

  @override
  String get reducedAnimationsSubtitle => '붓기 동작 속도 향상';

  @override
  String get sectionDifficulty => '난이도 및 시간 압박';

  @override
  String get offlineProgress => '오프라인 진행';

  @override
  String get offlineProgressBody => '레벨과 설정이 이 기기에 안전하게 저장됩니다.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => '오디오';

  @override
  String get tabVisual => '시각';

  @override
  String get tabGeneral => '설정';

  @override
  String get language => '언어';

  @override
  String get languageSubtitle => '앱 언어 선택';

  @override
  String get languageSystem => '시스템 기본값';

  @override
  String get languageSystemSubtitle => '휴대폰 또는 태블릿 언어 사용';

  @override
  String get difficultyEasy => '쉬움';

  @override
  String get difficultyNormal => '보통';

  @override
  String get difficultyHard => '어려움';

  @override
  String get difficultyEasyDesc => '시간 압박 없음 • 코인 적음 • 전면 광고 많음';

  @override
  String get difficultyNormalDesc => '보통 타이머, 가벼운 압박';

  @override
  String get difficultyHardDesc => '매우 짧은 타이머, 실수 시 -5초';

  @override
  String get dailyRewardTitle => '일일 보상';

  @override
  String get dailyRewardClaimBody => '오늘의 선물을 받으세요. 매일 방문하면 보상이 커집니다.';

  @override
  String get dailyRewardClaimedBody => '오늘은 이미 받았습니다. 내일 다시 오세요.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return '연속: $streakString일';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return '$dayString일';
  }

  @override
  String get plusHint => '+힌트';

  @override
  String get claimDailyReward => '오늘의 보상 받기';

  @override
  String get comeAgainTomorrow => '내일 다시 오세요';

  @override
  String get achievementsTitle => '업적';

  @override
  String get achGreetingEmpty => '준비 완료. 첫 레벨을 클리어하면 배지가 여기 쌓입니다.';

  @override
  String get achGreetingFlow => '플로우가 불타오른다 — 이 게임의 리듬을 잡았다.';

  @override
  String get achGreetingStars => '별 컬렉션이 빛납니다. 계속하세요, 레전드.';

  @override
  String get achGreetingVeteran => '좋은 페이스. 실험실이 당신 템포에 맞춥니다.';

  @override
  String get achGreetingProgress => '탄탄한 진행. 깔끔한 클리어마다 실력이 늡니다.';

  @override
  String get achGreetingStarter => '좋은 시작. 몇 레벨 더면 배지가 쏟아집니다.';

  @override
  String get statLevel => '레벨';

  @override
  String get statStars => '별';

  @override
  String get statCoins => '코인';

  @override
  String get statFlow => '플로우';

  @override
  String get statUnlocked => '해제';

  @override
  String get achievementLocked => '잠김';

  @override
  String get achievementPerfectSort => '완벽 정렬';

  @override
  String get achievementPerfectSortDesc => 'Par 이내, 도움 없이 클리어';

  @override
  String get achievementUnderPar => 'Par 이하';

  @override
  String get achievementUnderParDesc => '목표 이동 수를 넘지 않기';

  @override
  String get achievementNoUndo => 'Undo 없음';

  @override
  String get achievementNoUndoDesc => 'Undo 없이 클리어';

  @override
  String get achievementNoHint => '힌트 없음';

  @override
  String get achievementNoHintDesc => '힌트 없이 해결';

  @override
  String get achievementFlowMaster => '플로우 마스터';

  @override
  String get achievementFlowMasterDesc => '한 스테이지에서 플로우 x5 달성';

  @override
  String get achievementNewRecord => '신기록';

  @override
  String get achievementNewRecordDesc => '최고 이동 수 갱신';

  @override
  String get achievementFirstTry => '첫 시도';

  @override
  String get achievementFirstTryDesc => '재시작 없이 클리어';

  @override
  String get achievementNoExtraTube => '추가 튜브 없음';

  @override
  String get achievementNoExtraTubeDesc => '튜브 추가 없이 클리어';

  @override
  String get undo => 'Undo';

  @override
  String get restart => '재시작';

  @override
  String get hint => '힌트';

  @override
  String get addTube => '튜브 추가';

  @override
  String get perfect => '퍼펙트!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '레벨 $levelString 클리어';
  }

  @override
  String movesAndPar(int moves, int par) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return '$movesString이동  •  Par $parString';
  }

  @override
  String get newRecordAchievements => '신기록 • 업적';

  @override
  String get achievementsHeader => '업적';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return '힌트 페널티: -$amountString코인';
  }

  @override
  String get doubleReward => '보상 2배';

  @override
  String get goToLevels => '레벨';

  @override
  String get continueNext => '계속';

  @override
  String get backToLevelSelect => '레벨 선택으로';

  @override
  String get bestLabel => '최고';

  @override
  String get flowCombo => '플로우 콤보';

  @override
  String get extraTube => '추가 튜브';

  @override
  String get fullReward => '전체 보상';

  @override
  String get halfReward => '절반 보상';

  @override
  String get quarterReward => '4분의 1 보상';

  @override
  String starRewardLabel(int stars, String tone, int percent) {
    final intl.NumberFormat starsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String starsString = starsNumberFormat.format(stars);
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$starsString★ • $tone ($percentString%)';
  }

  @override
  String get newRule => '새 규칙';

  @override
  String get gotItStart => '알겠어, 시작';

  @override
  String get firstTimeTipOnly => '처음 한 번만 표시';

  @override
  String get mechanicBasicsTitle => '플레이 방법';

  @override
  String get mechanicBasicsHeadline => '튜브를 고르고 액체를 붓기';

  @override
  String get mechanicBasicsBody =>
      '튜브를 탭해 위 색을 선택. 그다음 대상 튜브 탭 — 같은 색은 쌓거나 빈 튜브에 붓기.';

  @override
  String get mechanicBasicsTip => '목표: 가득 찬 튜브는 모두 한 색. 빈 튜브는 도우미.';

  @override
  String get mechanicBasicsCaption => '선택 → 붓기 → 정렬';

  @override
  String get mechanicHiddenTitle => '숨겨진 튜브';

  @override
  String get mechanicHiddenHeadline => '위 색만 보임';

  @override
  String get mechanicHiddenBody => '이 튜브에서는 위 색만 보입니다. 아래 층은 위가 비워질 때까지 흐릿합니다.';

  @override
  String get mechanicHiddenTip => '맹목적으로 붓지 마세요 — 위를 먼저 비우고 아래를 확인하세요.';

  @override
  String get mechanicHiddenCaption => '위 공개 • 아래 흐림';

  @override
  String get mechanicMixTitle => '색 혼합';

  @override
  String get mechanicMixHeadline => '두 색이 새 색으로';

  @override
  String get mechanicMixBody => '특정 색을 겹쳐 붓으면 새 색이 됩니다. 위의 방정식을 따르세요.';

  @override
  String get mechanicMixTip => '양이 맞고 대상에 빈 공간이 필요합니다.';

  @override
  String get mechanicMixCaption => '빨강 + 노랑 = 주황';

  @override
  String get mechanicFrozenTitle => '얼어붙은 튜브';

  @override
  String get mechanicFrozenHeadline => '잠시 사용 불가';

  @override
  String get mechanicFrozenBody => '얼은 튜브에는 붓거나 뺄 수 없습니다. 충분한 이동 후 얼음이 녹습니다.';

  @override
  String get mechanicFrozenTip => '다른 튜브로 길을 열고, 녹으면 바로 사용하세요.';

  @override
  String get mechanicFrozenCaption => '이동 대기 → 해빙';

  @override
  String get mechanicLockedTitle => '잠긴 튜브';

  @override
  String get mechanicLockedHeadline => '다른 튜브를 먼저 완료';

  @override
  String get mechanicLockedBody => '잠긴 튜브는 일정 수의 튜브를 완료할 때까지 닫혀 있습니다.';

  @override
  String get mechanicLockedTip => '쉬운 튜브를 먼저, 그다음 잠긴 공간을 사용하세요.';

  @override
  String get mechanicLockedCaption => '완료 → 해제';

  @override
  String get mechanicHeatedTitle => '가열 튜브';

  @override
  String get mechanicHeatedHeadline => '불필요 액체 증발';

  @override
  String get mechanicHeatedBody => '가열기에 붓은 액체는 사라집니다. 가열 횟수는 제한 — 보통 불필요 색용.';

  @override
  String get mechanicHeatedTip => '가열이 끝나면 붓을 수 없습니다. 불필요 색은 일찍 처리.';

  @override
  String get mechanicHeatedCaption => '불필요 → 증발';

  @override
  String get mechanicValveTitle => '일방향 밸브';

  @override
  String get mechanicValveHeadline => '들어가기만';

  @override
  String get mechanicValveBody => '밸브 튜브에는 붓기만 가능, 꺼낼 수 없습니다. 영구 저장소처럼 작동.';

  @override
  String get mechanicValveTip => '잘못된 색은 막힐 수 있습니다. 신중히 채우세요.';

  @override
  String get mechanicValveCaption => '입구만';

  @override
  String get mechanicPortalTitle => '포털 쌍';

  @override
  String get mechanicPortalHeadline => '하나로 들어가 다른 쪽으로';

  @override
  String get mechanicPortalBody => '한 포털에 붓으면 짝 튜브에 액체가 나타납니다. 두 튜브가 연결됩니다.';

  @override
  String get mechanicPortalTip => '한 포털을 목표로 — 채우기는 반대편에서.';

  @override
  String get mechanicPortalCaption => 'A in → B out';

  @override
  String get mechanicBombTitle => '폭탄 튜브';

  @override
  String get mechanicBombHeadline => '타이머 전에 완료';

  @override
  String get mechanicBombBody => '표시된 튜브에 카운트다운. 0 전에 한 색으로 채우지 않으면 실패.';

  @override
  String get mechanicBombTip => '폭탄 튜브를 먼저 확보, 나머지 정렬.';

  @override
  String get mechanicBombCaption => '카운트다운 전에 채우기';

  @override
  String get mechanicNarrowTitle => '좁은 튜브';

  @override
  String get mechanicNarrowHeadline => '용량 2 버퍼';

  @override
  String get mechanicNarrowBody => '최대 2단위의 짧은 보조 튜브. 좁은 기동용.';

  @override
  String get mechanicNarrowTip => '클리어하려면 비어 있어야 합니다. 2단위는 완료가 아님 — 다시 비우세요.';

  @override
  String get mechanicNarrowCaption => '용량 2 • 비워서 완료';

  @override
  String get mechanicMovingTitle => '이동 레이아웃';

  @override
  String get mechanicMovingHeadline => '튜브가 자리 바꿈';

  @override
  String get mechanicMovingBody => '몇 이동마다 보드가 이동하고 순서가 바뀝니다. 같은 튜브 — 새 위치.';

  @override
  String get mechanicMovingTip => 'id와 색으로 튜브 추적.';

  @override
  String get mechanicMovingCaption => '3이동마다 이동';

  @override
  String get mechanicBossTitle => 'BOSS 실험';

  @override
  String get mechanicBossHeadline => '더 엄격한 규칙';

  @override
  String get mechanicBossBody => 'Boss 레벨은 이동 제한과 여러 특수 규칙 조합. 계획적으로 플레이.';

  @override
  String get mechanicBossTip => 'Par 근처 유지. 불필요한 Undo와 낭비 붓기 피하기.';

  @override
  String get mechanicBossCaption => '제한 + 특수 규칙';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '레벨 $levelString';
  }

  @override
  String get movesLabel => '이동';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  무제한 재시도  •  오프라인';
  }

  @override
  String get pauseTooltip => '일시정지';

  @override
  String get resumeTooltip => '재개';

  @override
  String get settingsTooltip => '설정';

  @override
  String get pausedTitle => '일시정지';

  @override
  String get pausedBody => '타이머와 카운트다운 사운드가 멈춤.';

  @override
  String get resumeCta => '재개';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString초';
  }

  @override
  String get easyRelaxed => '쉬움  •  여유';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString이동';
  }

  @override
  String get hiddenLiquid => '숨겨진 액체';

  @override
  String get frozenTube => '얼어붙은 튜브';

  @override
  String get iceCleared => '해빙';

  @override
  String get lockedTube => '잠긴 튜브';

  @override
  String get lockOpened => '잠금 해제';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '불필요 소각 • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '가열 튜브 • $remainingString';
  }

  @override
  String get portalPair => '포털 쌍';

  @override
  String get oneWayValve => '일방향 밸브';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '폭탄 • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return '$movesString이동마다 이동';
  }

  @override
  String get narrowTubeCap2 => '좁은 튜브 • 용량 2';

  @override
  String get hiddenMix => '숨겨진 혼합';

  @override
  String get portalFlow => '포탈 플로우!';

  @override
  String get tubesShifted => '튜브 이동!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '폭탄: $remainingString이동!';
  }

  @override
  String get iceBroken => '얼음 깨짐! 얼어붙은 튜브 사용 가능.';

  @override
  String get lockUnlocked => '잠금 해제! 새 튜브 준비됨.';

  @override
  String get tubeFrozenMsg => '이 튜브는 얼어 있습니다. 몇 번의 올바른 이동으로 녹습니다.';

  @override
  String get tubeLockedMsg => '이 튜브는 잠겨 있습니다. 다른 색을 먼저 완료하세요.';

  @override
  String get valveOneWayMsg => '금 밸브는 일방향: 넣을 수만 있고 꺼낼 수 없습니다.';

  @override
  String get heatExhaustedMsg => '가열 튜브의 연소 횟수가 소진되었습니다.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '코인 부족 ($costString).';
  }

  @override
  String get adFailed => '광고를 완료할 수 없습니다.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString코인 • $title 다시 열림';
  }

  @override
  String reopenAd(String title) {
    return '광고로 열림 • $title';
  }

  @override
  String get tipQuotaEmpty => '이 레벨의 힌트를 모두 사용했습니다.';

  @override
  String get rewardsNotReady => '보상 시스템이 준비되지 않았습니다.';

  @override
  String get freeHintUsed => '무료 힌트 사용됨.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '힌트: -$costString코인';
  }

  @override
  String get noHintAvailable => '지금 유용한 힌트가 없습니다.';

  @override
  String get assistHint => '힌트';

  @override
  String get assistUndo => 'Undo';

  @override
  String get freeHintEarned => '무료 힌트 1개 획득.';

  @override
  String get freeUndoEarned => '무료 Undo 1회 획득.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString크레dit • 실패 (최소 $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '부채 한도 ($floorString). 광고 보고 재시도.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString크레dit • 재시작';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '코인 부족 ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return '광고를 보고 무료 $label 1개 획득.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '부채 한도 ($floorString)';
  }

  @override
  String get debtLimitBody => '부채 하한에 도달했습니다. 광고를 보고 다시 시도하세요.';

  @override
  String get tipUnlockPaidBody => '이 규칙은 한 번 무료로 봤습니다.\n다시 읽으려면 코인이 필요합니다.';

  @override
  String get tipUnlockAdBody => '코인이 부족합니다.\n광고를 보고 무료로 열 수 있습니다.';

  @override
  String get yourBalance => '잔액: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '$costString 지불';
  }

  @override
  String get timeUp => '시간 종료';

  @override
  String get bombExploded => '폭탄 폭발!';

  @override
  String get moveLimitReached => '이동 한도 도달';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '실패: -$amountString크레dit (부채 최소 $floorString).';
  }

  @override
  String get tryEasyModeHint => '쉬움 모드에서 시간 압박을 끌 수 있습니다.';

  @override
  String get bombFailHint => '빨간 카운트다운 전에 표시 튜브를 한 색으로 채우세요.';

  @override
  String get bossFailHint => 'Boss 실험이 이동 한도 초과. 혼합과 빈 튜브를 계획하세요.';

  @override
  String get debtLimitRetryHint => '부채 한도 — 광고 보고 재시도.';

  @override
  String get retryWithAd => '광고 • 재시도';

  @override
  String get retryAgain => '다시 시도';

  @override
  String get vaporized => '증발!';

  @override
  String colorClearedBonus(String color) {
    return '$color 제거  •  +4초';
  }

  @override
  String get newColorFormed => '새 색 형성!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6초';
  }

  @override
  String get legendaryFlow => '전설의 플로우!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return '플로우 x$comboString';
  }

  @override
  String get legendaryFlowLabel => '전설의 플로우';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return '플로우 x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return '튜브 $id, $unitsString단위 채움';
  }

  @override
  String get colorRed => '빨강';

  @override
  String get colorBlue => '파랑';

  @override
  String get colorPurple => '보라';

  @override
  String get colorYellow => '노랑';

  @override
  String get colorGreen => '초록';

  @override
  String get colorOrange => '주황';

  @override
  String get colorPink => '분홍';

  @override
  String get colorCyan => '청록';

  @override
  String get colorLime => '라임';

  @override
  String get colorBrown => '갈색';

  @override
  String get skipLevelOfferBody => '이 스테이지가 어렵네요. 광고를 보고 다음을 잠금 해제하세요.';

  @override
  String get skipLevelCta => '광고 보기 • 건너뛰기';

  @override
  String get skipLevelNote => '나중에 이 스테이지로 돌아와 완료할 수 있어요.';

  @override
  String get skipLevelUnlocked => '다음 스테이지가 열렸습니다!';

  @override
  String get developerModeTitle => '개발자 모드';

  @override
  String get developerModePasswordHint => '비밀번호';

  @override
  String get developerModeUnlock => '잠금 해제';

  @override
  String get developerModeEnabled => '테스트용으로 모든 스테이지가 열렸습니다.';

  @override
  String get developerModeWrongPassword => '비밀번호가 틀렸습니다';

  @override
  String get developerModeActive => '개발자 모드 활성';

  @override
  String get developerModeDisable => '개발자 모드 끄기';
}
