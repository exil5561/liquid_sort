// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'رتّب الألوان. صفِّ ذهنك.';

  @override
  String get back => 'رجوع';

  @override
  String get cancel => 'إلغاء';

  @override
  String get play => 'العب';

  @override
  String get settings => 'الإعدادات';

  @override
  String get home => 'الرئيسية';

  @override
  String get levels => 'المستويات';

  @override
  String get collection => 'المجموعة';

  @override
  String get achievements => 'الإنجازات';

  @override
  String get continueLabel => 'متابعة';

  @override
  String get pause => 'إيقاف';

  @override
  String get close => 'إغلاق';

  @override
  String get free => 'مجاني';

  @override
  String get coin => 'عملة';

  @override
  String get coins => 'عملات';

  @override
  String get secondsShort => 'ث';

  @override
  String get moves => 'حركات';

  @override
  String get best => 'الأفضل';

  @override
  String get par => 'Par';

  @override
  String get locked => 'مقفل';

  @override
  String get ad => 'إعلان';

  @override
  String get watchAd => 'شاهد إعلانًا';

  @override
  String get claiming => 'جاري الاستلام...';

  @override
  String get homeTagline => 'رتّب بذكاء، امزج الألوان!';

  @override
  String get progressAndAchievements => 'التقدم والإنجازات';

  @override
  String get progressTapHint => 'اضغط: الإحصائيات والشارات';

  @override
  String get dailyReward => 'مكافأة يومية';

  @override
  String get rewardReady => 'المكافأة جاهزة';

  @override
  String get comeTomorrow => 'عد غدًا';

  @override
  String get collectionSubtitle => 'تصفح السمات';

  @override
  String get premiumThemes => 'سمات مميزة';

  @override
  String get premiumThemesBody =>
      'سمات Classic وGalaxy وOcean وNeon وGolden Age تُفتح هنا.';

  @override
  String get playCta => 'العب';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString عملة$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString تلميح مجاني';
  }

  @override
  String get levelMapTitle => 'خريطة المستويات';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString مستوى مكتمل';
  }

  @override
  String get newExperimentsBanner =>
      'تجارب جديدة\nPORTAL • BOMB • VALVE • REACTOR';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsSubtitleAudio => 'التحكم بالصوت واللمس';

  @override
  String get settingsSubtitleVisual => 'الألوان والأنماط والحركة';

  @override
  String get settingsSubtitleGeneral => 'الصعوبة والتفضيلات العامة';

  @override
  String get sectionAudioFeedback => 'الصوت والتفاعل';

  @override
  String get soundEffects => 'المؤثرات الصوتية';

  @override
  String get soundEffectsSubtitle => 'أصوات الاختيار والسكب والنجاح';

  @override
  String get backgroundMusic => 'موسيقى الخلفية';

  @override
  String get backgroundMusicSubtitle => 'موسيقى cósmic هادئة';

  @override
  String get haptics => 'اللمس';

  @override
  String get hapticsSubtitle => 'ردود فعل خفيفة عند اللمس';

  @override
  String get sectionVisual => 'التفضيلات البصرية';

  @override
  String get neonPalette => 'لوحة سائل نيون';

  @override
  String get neonPaletteSubtitle => 'ألوان نيون زاهية في اللعبة';

  @override
  String get colorAccessibility => 'إمكانية الوصول للألوان';

  @override
  String get colorAccessibilitySubtitle => 'يضيف أنماطًا دقيقة للسوائل';

  @override
  String get reducedAnimations => 'حركة مخفّضة';

  @override
  String get reducedAnimationsSubtitle => 'يسرّع حركات السكب';

  @override
  String get sectionDifficulty => 'الصعوبة وضغط الوقت';

  @override
  String get offlineProgress => 'التقدم دون اتصال';

  @override
  String get offlineProgressBody =>
      'مستوياتك وإعداداتك محفوظة بأمان على هذا الجهاز.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'الصوت';

  @override
  String get tabVisual => 'العرض';

  @override
  String get tabGeneral => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get languageSubtitle => 'اختر لغة التطبيق';

  @override
  String get languageSystem => 'افتراضي النظام';

  @override
  String get languageSystemSubtitle => 'مطابقة لغة الهاتف أو الجهاز اللوحي';

  @override
  String get difficultyEasy => 'سهل';

  @override
  String get difficultyNormal => 'عادي';

  @override
  String get difficultyHard => 'صعب';

  @override
  String get difficultyEasyDesc =>
      'بدون ضغط وقت • عملات أقل • إعلانات بينية أكثر';

  @override
  String get difficultyNormalDesc => 'مؤقت معتدل، ضغط خفيف';

  @override
  String get difficultyHardDesc => 'مؤقت قصير جدًا، -5 ث عند الخطأ';

  @override
  String get dailyRewardTitle => 'مكافأة يومية';

  @override
  String get dailyRewardClaimBody =>
      'استلم هدية اليوم. عد يوميًا لتكبر المكافأة.';

  @override
  String get dailyRewardClaimedBody => 'لقد استلمت اليوم. عد غدًا.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'سلسلة: $streakString يوم';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'ي$dayString';
  }

  @override
  String get plusHint => '+تلميح';

  @override
  String get claimDailyReward => 'استلم مكافأة اليوم';

  @override
  String get comeAgainTomorrow => 'عد غدًا';

  @override
  String get achievementsTitle => 'الإنجازات';

  @override
  String get achGreetingEmpty =>
      'أنت جاهز. أكمل أول مستوى وستبدأ الشارات بالتجمّع هنا.';

  @override
  String get achGreetingFlow => 'تدفقك مشتعل — أمسكت بإيقاع اللعبة.';

  @override
  String get achGreetingStars => 'مجموعة نجومك تلمع. واصل، أيها الأسطورة.';

  @override
  String get achGreetingVeteran => 'إيقاع جيد. المختبر يواكب tempo الخاص بك.';

  @override
  String get achGreetingProgress => 'تقدم قوي. كل مستوى نظيف يجعلك أ sharper.';

  @override
  String get achGreetingStarter =>
      'بداية قوية. بضعة مستويات أخرى وستنهمر الشارات.';

  @override
  String get statLevel => 'المستوى';

  @override
  String get statStars => 'النجوم';

  @override
  String get statCoins => 'العملات';

  @override
  String get statFlow => 'تدفق';

  @override
  String get statUnlocked => 'مفتوح';

  @override
  String get achievementLocked => 'مقفل';

  @override
  String get achievementPerfectSort => 'فرز مثالي';

  @override
  String get achievementPerfectSortDesc => 'أنهِ ضمن Par بدون مساعدة';

  @override
  String get achievementUnderPar => 'تحت Par';

  @override
  String get achievementUnderParDesc => 'لا تتجاوز عدد الحركات المستهدف';

  @override
  String get achievementNoUndo => 'بدون تراجع';

  @override
  String get achievementNoUndoDesc => 'أنهِ دون استخدام تراجع';

  @override
  String get achievementNoHint => 'بدون تلميحات';

  @override
  String get achievementNoHintDesc => 'حل دون تلميحات';

  @override
  String get achievementFlowMaster => 'سيد التدفق';

  @override
  String get achievementFlowMasterDesc => 'حقق تدفق ×5 في مستوى';

  @override
  String get achievementNewRecord => 'رقم قياسي جديد';

  @override
  String get achievementNewRecordDesc => 'حطّم أفضل عدد حركات';

  @override
  String get achievementFirstTry => 'من المحاولة الأولى';

  @override
  String get achievementFirstTryDesc => 'أكمل دون إعادة تشغيل';

  @override
  String get achievementNoExtraTube => 'بدون أنبوب إضافي';

  @override
  String get achievementNoExtraTubeDesc => 'أنهِ دون إضافة أنبوب';

  @override
  String get undo => 'تراجع';

  @override
  String get restart => 'إعادة';

  @override
  String get hint => 'تلميح';

  @override
  String get addTube => 'إضافة أنبوب';

  @override
  String get perfect => 'مثالي!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'المستوى $levelString مكتمل';
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

    return '$movesString حركة  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'رقم قياسي • إنجازات';

  @override
  String get achievementsHeader => 'الإنجازات';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'عقوبة التلميح: -$amountString عملة';
  }

  @override
  String get doubleReward => 'مكافأة مضاعفة';

  @override
  String get goToLevels => 'المستويات';

  @override
  String get continueNext => 'متابعة';

  @override
  String get backToLevelSelect => 'العودة لاختيار المستوى';

  @override
  String get bestLabel => 'الأفضل';

  @override
  String get flowCombo => 'كومبو التدفق';

  @override
  String get extraTube => 'أنبوب إضافي';

  @override
  String get fullReward => 'مكافأة كاملة';

  @override
  String get halfReward => 'نصف مكافأة';

  @override
  String get quarterReward => 'ربع مكافأة';

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
  String get newRule => 'قاعدة جديدة';

  @override
  String get gotItStart => 'فهمت، ابدأ';

  @override
  String get firstTimeTipOnly => 'يُعرض فقط في المرة الأولى';

  @override
  String get mechanicBasicsTitle => 'كيفية اللعب';

  @override
  String get mechanicBasicsHeadline => 'اختر الأنابيب، اسكب السائل';

  @override
  String get mechanicBasicsBody =>
      'اضغط أنبوبًا لاختيار لونه العلوي. ثم اضغط الهدف — الألوان المتطابقة تتراكم أو اسكب في أنبوب فارغ.';

  @override
  String get mechanicBasicsTip =>
      'الهدف: كل أنبوب ممتلئ بلون واحد. الأنابيب الفارغة مساعدة.';

  @override
  String get mechanicBasicsCaption => 'اختيار → سكب → فرز';

  @override
  String get mechanicHiddenTitle => 'أنبوب مخفي';

  @override
  String get mechanicHiddenHeadline => 'اللون العلوي فقط ظاهر';

  @override
  String get mechanicHiddenBody =>
      'في هذا الأنبوب ترى اللون العلوي فقط. الطبقات السفلية ضبابية حتى يُفرغ العلوي.';

  @override
  String get mechanicHiddenTip =>
      'لا تسكب blindly — فرّغ العلوي أولًا، اكشف الأسفل، ثم قرر.';

  @override
  String get mechanicHiddenCaption => 'علوي واضح • سفلي ضبابي';

  @override
  String get mechanicMixTitle => 'مزج الألوان';

  @override
  String get mechanicMixHeadline => 'لونان يتكونان لونًا جديدًا';

  @override
  String get mechanicMixBody =>
      'اسكب ألوانًا معينة فوق بعضها للmezج. اتبع المعادلات أعلى الشاشة.';

  @override
  String get mechanicMixTip =>
      'يجب أن تتطابق الكميات ويحتاج الهدف مساحة فارغة.';

  @override
  String get mechanicMixCaption => 'أحمر + أصفر = برتقالي';

  @override
  String get mechanicFrozenTitle => 'أنبوب متجمد';

  @override
  String get mechanicFrozenHeadline => 'لا يُلمس لفترة';

  @override
  String get mechanicFrozenBody =>
      'لا يمكن السكب في أو من أنبوب متجمد. بعد حركات كافية يذوب الجليد.';

  @override
  String get mechanicFrozenTip =>
      'افتح مسارًا بأنابيب أخرى؛ استخدمه فور ذوبان الجليد.';

  @override
  String get mechanicFrozenCaption => 'انتظر حركات → يذوب';

  @override
  String get mechanicLockedTitle => 'أنبوب مقفل';

  @override
  String get mechanicLockedHeadline => 'أكمل أنبوبًا آخر أولًا';

  @override
  String get mechanicLockedBody =>
      'الأنبوب المقفل يبقى مغلقًا حتى تكمل عددًا من الأنابيب.';

  @override
  String get mechanicLockedTip =>
      'أكمل الأنابيب السهلة أولًا، ثم استخدم المساحة المقفلة.';

  @override
  String get mechanicLockedCaption => 'أكمل → افتح';

  @override
  String get mechanicHeatedTitle => 'أنبوب تسخين';

  @override
  String get mechanicHeatedHeadline => 'تبخير السائل الزائد';

  @override
  String get mechanicHeatedBody =>
      'السائل المسكوب في المسخّن يختفي. شحنات الحرارة محدودة — عادة للألوان الزائدة.';

  @override
  String get mechanicHeatedTip =>
      'عند نفاد الحرارة لا يمكن السكب. نظّف الزائد مبكرًا.';

  @override
  String get mechanicHeatedCaption => 'زائد → بخار';

  @override
  String get mechanicValveTitle => 'صمام أحادي';

  @override
  String get mechanicValveHeadline => 'سكب للداخل فقط';

  @override
  String get mechanicValveBody =>
      'يمكنك السكب في صمام لكن لا سحب. يعمل كمخزن دائم.';

  @override
  String get mechanicValveTip => 'لون خاطئ قد يحبسك. املأ الصمامات بحذر.';

  @override
  String get mechanicValveCaption => 'دخول فقط';

  @override
  String get mechanicPortalTitle => 'زوج بوابات';

  @override
  String get mechanicPortalHeadline => 'ادخل من واحدة، اخرج من الأخرى';

  @override
  String get mechanicPortalBody =>
      'اسكب في بوابة فيظهر السائل في التوأم. الأنبوبان مرتبطان.';

  @override
  String get mechanicPortalTip => 'استهدف بوابة — الملء يحدث في الجانب الآخر.';

  @override
  String get mechanicPortalCaption => 'A داخل → B خارج';

  @override
  String get mechanicBombTitle => 'أنبوب قنبلة';

  @override
  String get mechanicBombHeadline => 'أنهِ قبل المؤقت';

  @override
  String get mechanicBombBody =>
      'الأنبوب المحدد له عد تنازلي. املأه بلون واحد قبل الصفر وإلا تفشل.';

  @override
  String get mechanicBombTip => 'أمّن أنبوب القنبلة أولًا، ثم رتّب الباقي.';

  @override
  String get mechanicBombCaption => 'املأ قبل انتهاء العد';

  @override
  String get mechanicNarrowTitle => 'أنبوب ضيق';

  @override
  String get mechanicNarrowHeadline => 'مخزن سعة 2';

  @override
  String get mechanicNarrowBody =>
      'مستوى فيه أنبوب مساعد قصير يحمل 2 وحدة كحد أقصى. للمناورات الضيقة.';

  @override
  String get mechanicNarrowTip =>
      'يجب أن يكون فارغًا للإنهاء. 2 وحدة لا تُعد مكتملًا — أفرغه مجددًا.';

  @override
  String get mechanicNarrowCaption => 'سعة 2 • فارغ للإنهاء';

  @override
  String get mechanicMovingTitle => 'تخطيط متحرك';

  @override
  String get mechanicMovingHeadline => 'الأنابيب تتبدّل';

  @override
  String get mechanicMovingBody =>
      'كل بضع حركات ينتقل اللوح ويتغير ترتيب الأنابيب. نفس الأنابيب — مواقع جديدة.';

  @override
  String get mechanicMovingTip => 'تتبع الأنابيب بال id والألوان.';

  @override
  String get mechanicMovingCaption => 'يتغير كل 3 حركات';

  @override
  String get mechanicBossTitle => 'تجربة Boss';

  @override
  String get mechanicBossHeadline => 'قواعد أ tougher';

  @override
  String get mechanicBossBody =>
      'مستويات Boss لها حد حركات وقد تجمع قواعد خاصة. العب بخطة.';

  @override
  String get mechanicBossTip => 'ابق قريبًا من Par؛ تجنب تراجع وسكب مهدر.';

  @override
  String get mechanicBossCaption => 'حد + قواعد خاصة';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'المستوى $levelString';
  }

  @override
  String get movesLabel => 'حركات';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  محاولات غير محدودة  •  دون اتصال';
  }

  @override
  String get pauseTooltip => 'إيقاف';

  @override
  String get resumeTooltip => 'استئناف';

  @override
  String get settingsTooltip => 'الإعدادات';

  @override
  String get pausedTitle => 'اللعبة متوقفة';

  @override
  String get pausedBody => 'المؤقت وأصوات العد متوقفة.';

  @override
  String get resumeCta => 'استئناف';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString ث';
  }

  @override
  String get easyRelaxed => 'سهل  •  م relaxed';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString حركة';
  }

  @override
  String get hiddenLiquid => 'سائل مخفي';

  @override
  String get frozenTube => 'أنبوب متجمد';

  @override
  String get iceCleared => 'جليد مُزال';

  @override
  String get lockedTube => 'أنبوب مقفل';

  @override
  String get lockOpened => 'قفل مفتوح';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'حرق الزائد • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'أنبوب حرارة • $remainingString';
  }

  @override
  String get portalPair => 'زوج بوابات';

  @override
  String get oneWayValve => 'صمام أحادي';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'قنبلة • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'يتغير كل $movesString حركة';
  }

  @override
  String get narrowTubeCap2 => 'أنبوب ضيق • سعة 2';

  @override
  String get hiddenMix => 'mezج مخفي';

  @override
  String get portalFlow => 'تدفق البوابة!';

  @override
  String get tubesShifted => 'الأنابيب تحركت!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'قنبلة: $remainingString حركة!';
  }

  @override
  String get iceBroken => 'انكسر الجليد! الأنبوب المتجمد جاهز.';

  @override
  String get lockUnlocked => 'فُتح القفل! أنبوب جديد جاهز.';

  @override
  String get tubeFrozenMsg => 'هذا الأنبوب متجمد. بعض الحركات الصحيحة ستذيبه.';

  @override
  String get tubeLockedMsg => 'هذا الأنبوب مقفل. أكمل لونًا آخر أولًا.';

  @override
  String get valveOneWayMsg => 'الصمام الذهبي أحادي: يمكنك السكب للداخل فقط.';

  @override
  String get heatExhaustedMsg => 'نفدت شحنات الحرق في هذا المسخّن.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'عملات غير كافية ($costString).';
  }

  @override
  String get adFailed => 'تعذر إكمال الإعلان.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString عملة • $title أُعيد فتحه';
  }

  @override
  String reopenAd(String title) {
    return 'فُتح بالإعلان • $title';
  }

  @override
  String get tipQuotaEmpty => 'نفدت تلميحات هذا المستوى.';

  @override
  String get rewardsNotReady => 'نظام المكافآت غير جاهز.';

  @override
  String get freeHintUsed => 'استُخدم تلميح مجاني.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'تلميح: -$costString عملة';
  }

  @override
  String get noHintAvailable => 'لا يوجد تلميح مفيد الآن.';

  @override
  String get assistHint => 'تلميح';

  @override
  String get assistUndo => 'تراجع';

  @override
  String get freeHintEarned => 'حصلت على تلميح مجاني.';

  @override
  String get freeUndoEarned => 'حصلت على تراجع مجاني.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString رصيد • محاولة فاشلة (حد أدنى $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'حد الدين ($floorString). شاهد إعلانًا للإ retry.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString رصيد • إعادة';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'عملات غير كافية ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'شاهد إعلانًا للحصول على $label مجاني.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'حد الدين ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'وصلت لحد الدين الأدنى. شاهد إعلانًا للمحاولة مجددًا.';

  @override
  String get tipUnlockPaidBody =>
      'شاهدت هذه القاعدة مجانًا مرة.\nإعادة القراءة تكلف عملات.';

  @override
  String get tipUnlockAdBody =>
      'عملات غير كافية.\nشاهد إعلانًا لفتح هذا التلميح مجانًا.';

  @override
  String get yourBalance => 'الرصيد: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'ادفع $costString';
  }

  @override
  String get timeUp => 'انتهى الوقت';

  @override
  String get bombExploded => 'انفجرت القنبلة!';

  @override
  String get moveLimitReached => 'بلغت حد الحركات';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'محاولة فاشلة: -$amountString رصيد (دين min $floorString).';
  }

  @override
  String get tryEasyModeHint => 'يمكنك إيقاف ضغط الوقت في الوضع السهل.';

  @override
  String get bombFailHint =>
      'املأ الأنبوب المحدد بلون واحد قبل انتهاء العد الأحمر.';

  @override
  String get bossFailHint =>
      'تجربة Boss تجاوزت حد الحركات. خطّط للmezج والأنابيب الفارغة.';

  @override
  String get debtLimitRetryHint => 'وصلت حد الدين — شاهد إعلانًا للإ retry.';

  @override
  String get retryWithAd => 'شاهد إعلان • أعد';

  @override
  String get retryAgain => 'حاول مجددًا';

  @override
  String get vaporized => 'تبخّر!';

  @override
  String colorClearedBonus(String color) {
    return '$color أُزيل  •  +4 ث';
  }

  @override
  String get newColorFormed => 'لون جديد!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 ث';
  }

  @override
  String get legendaryFlow => 'تدفق أسطوري!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'تدفق ×$comboString';
  }

  @override
  String get legendaryFlowLabel => 'تدفق أسطوري';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'تدفق ×$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'أنبوب $id، $unitsString وحدة ممتلئة';
  }

  @override
  String get colorRed => 'أحمر';

  @override
  String get colorBlue => 'أزرق';

  @override
  String get colorPurple => 'بنفسجي';

  @override
  String get colorYellow => 'أصفر';

  @override
  String get colorGreen => 'أخضر';

  @override
  String get colorOrange => 'برتقالي';

  @override
  String get colorPink => 'وردي';

  @override
  String get colorCyan => 'سماوي';

  @override
  String get colorLime => 'ليموني';

  @override
  String get colorBrown => 'بني';

  @override
  String get skipLevelOfferBody =>
      'هذا المستوى صعب. شاهد إعلانًا لفتح المستوى التالي.';

  @override
  String get skipLevelCta => 'شاهد إعلانًا • تخطَّ';

  @override
  String get skipLevelNote => 'يمكنك العودة وإنهاء هذا المستوى لاحقًا.';

  @override
  String get skipLevelUnlocked => 'تم فتح المستوى التالي!';

  @override
  String get developerModeTitle => 'وضع المطوّر';

  @override
  String get developerModePasswordHint => 'كلمة المرور';

  @override
  String get developerModeUnlock => 'فتح';

  @override
  String get developerModeEnabled => 'تم فتح كل المستويات للاختبار.';

  @override
  String get developerModeWrongPassword => 'كلمة مرور خاطئة';

  @override
  String get developerModeActive => 'وضع المطوّر مفعّل';

  @override
  String get developerModeDisable => 'إيقاف وضع المطوّر';
}
