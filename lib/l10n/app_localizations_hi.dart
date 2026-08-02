// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'रंगों को क्रमबद्ध करें। मन को शांत करें।';

  @override
  String get back => 'वापस';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get play => 'खेलें';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get home => 'होम';

  @override
  String get levels => 'लेवल';

  @override
  String get collection => 'संग्रह';

  @override
  String get achievements => 'उपलब्धियाँ';

  @override
  String get continueLabel => 'जारी रखें';

  @override
  String get pause => 'रोकें';

  @override
  String get close => 'बंद';

  @override
  String get free => 'मुफ़्त';

  @override
  String get coin => 'सिक्का';

  @override
  String get coins => 'सिक्के';

  @override
  String get secondsShort => 'से';

  @override
  String get moves => 'चाल';

  @override
  String get best => 'सर्वश्रेष्ठ';

  @override
  String get par => 'Par';

  @override
  String get locked => 'लॉक';

  @override
  String get ad => 'विज्ञापन';

  @override
  String get watchAd => 'विज्ञापन देखें';

  @override
  String get claiming => 'प्राप्त हो रहा...';

  @override
  String get homeTagline => 'समझदारी से क्रमबद्ध करें, रंग मिलाएँ!';

  @override
  String get progressAndAchievements => 'प्रगति और उपलब्धियाँ';

  @override
  String get progressTapHint => 'टैप: आँकड़े और बैज';

  @override
  String get dailyReward => 'दैनिक इनाम';

  @override
  String get rewardReady => 'इनाम तैयार';

  @override
  String get comeTomorrow => 'कल आएँ';

  @override
  String get collectionSubtitle => 'थीम देखें';

  @override
  String get premiumThemes => 'प्रीमियम थीम';

  @override
  String get premiumThemesBody =>
      'Classic, Galaxy, Ocean, Neon और Golden Age थीम यहाँ अनलॉक होती हैं।';

  @override
  String get playCta => 'खेलें';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString सिक्के$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString मुफ़्त संकेत';
  }

  @override
  String get levelMapTitle => 'लेवल मैप';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString लेवल पूरे';
  }

  @override
  String get newExperimentsBanner =>
      'नए प्रयोग\nPORTAL • BOMB • VALVE • REACTOR';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsSubtitleAudio => 'ध्वनि और हैप्टिक नियंत्रण';

  @override
  String get settingsSubtitleVisual => 'रंग, पैटर्न और एनिमेशन';

  @override
  String get settingsSubtitleGeneral => 'कठिनाई और सामान्य वरीयताएँ';

  @override
  String get sectionAudioFeedback => 'ध्वनि और प्रतिक्रिया';

  @override
  String get soundEffects => 'ध्वनि प्रभाव';

  @override
  String get soundEffectsSubtitle => 'चयन, डालने और सफलता की आवाज़';

  @override
  String get backgroundMusic => 'पृष्ठभूमि संगीत';

  @override
  String get backgroundMusicSubtitle => 'शांत ब्रह्मांडीय ambient संगीत';

  @override
  String get haptics => 'हैप्टिक';

  @override
  String get hapticsSubtitle => 'टैप पर हल्की प्रतिक्रिया';

  @override
  String get sectionVisual => 'दृश्य वरीयताएँ';

  @override
  String get neonPalette => 'नियॉन तरल पैलेट';

  @override
  String get neonPaletteSubtitle => 'गेम में ज vivid नियॉन रंग';

  @override
  String get colorAccessibility => 'रंग पहुँच';

  @override
  String get colorAccessibilitySubtitle => 'तरल में सूक्ष्म पैटर्न जोड़ता है';

  @override
  String get reducedAnimations => 'कम एनिमेशन';

  @override
  String get reducedAnimationsSubtitle => 'डालने की गति बढ़ाता है';

  @override
  String get sectionDifficulty => 'कठिनाई और समय दबाव';

  @override
  String get offlineProgress => 'ऑफ़लाइन प्रगति';

  @override
  String get offlineProgressBody =>
      'आपके लेवल और सेटिंग्स इस डिवाइस पर सुरक्षित हैं।';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'ऑडियो';

  @override
  String get tabVisual => 'दृश्य';

  @override
  String get tabGeneral => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get languageSubtitle => 'ऐप भाषा चुनें';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get languageSystemSubtitle => 'फ़ोन या टैबलेट की भाषा';

  @override
  String get difficultyEasy => 'आसान';

  @override
  String get difficultyNormal => 'सामान्य';

  @override
  String get difficultyHard => 'कठिन';

  @override
  String get difficultyEasyDesc =>
      'समय दबाव नहीं • कम सिक्के • अधिक interstitial विज्ञापन';

  @override
  String get difficultyNormalDesc => 'मध्यम टाइमर, हल्का दबाव';

  @override
  String get difficultyHardDesc => 'बहुत छोटा टाइमर, गलती पर -5 से';

  @override
  String get dailyRewardTitle => 'दैनिक इनाम';

  @override
  String get dailyRewardClaimBody =>
      'आज का उपहार लें। हर दिन आएँ, इनाम बढ़ेगा।';

  @override
  String get dailyRewardClaimedBody => 'आज ले चुके। कल आएँ।';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'लगातार: $streakString दिन';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'दि$dayString';
  }

  @override
  String get plusHint => '+संकेत';

  @override
  String get claimDailyReward => 'आज का इनाम लें';

  @override
  String get comeAgainTomorrow => 'कल फिर आएँ';

  @override
  String get achievementsTitle => 'उपलब्धियाँ';

  @override
  String get achGreetingEmpty =>
      'तैयार। पहला लेवल पूरा करें, बैज यहाँ जमा होंगे।';

  @override
  String get achGreetingFlow =>
      'आपका प्रवाह जोश में है — आपने खेल की लय पकड़ ली है।';

  @override
  String get achGreetingStars =>
      'आपका सितारा संग्रह चमक रहा। जारी रखें, लीजेंड।';

  @override
  String get achGreetingVeteran => 'अच्छी गति। लैब आपके tempo पर है।';

  @override
  String get achGreetingProgress =>
      'ठोस प्रगति। हर साफ लेवल आपको तेज़ बनाता है।';

  @override
  String get achGreetingStarter => 'मजबूत शुरुआत। कुछ और लेवल, बैज बरसेंगे।';

  @override
  String get statLevel => 'लेवल';

  @override
  String get statStars => 'सितारे';

  @override
  String get statCoins => 'सिक्के';

  @override
  String get statFlow => 'प्रवाह';

  @override
  String get statUnlocked => 'अनलॉक';

  @override
  String get achievementLocked => 'लॉक';

  @override
  String get achievementPerfectSort => 'परफेक्ट सॉर्ट';

  @override
  String get achievementPerfectSortDesc => 'Par के भीतर, बिना सहायता के';

  @override
  String get achievementUnderPar => 'Par से कम';

  @override
  String get achievementUnderParDesc => 'लक्ष्य चाल से अधिक न करें';

  @override
  String get achievementNoUndo => 'बिना Undo';

  @override
  String get achievementNoUndoDesc => 'Undo के बिना पूरा करें';

  @override
  String get achievementNoHint => 'बिना संकेत';

  @override
  String get achievementNoHintDesc => 'संकेत के बिना हल करें';

  @override
  String get achievementFlowMaster => 'प्रवाह मास्टर';

  @override
  String get achievementFlowMasterDesc => 'एक स्तर में प्रवाह x5 तक पहुँचें';

  @override
  String get achievementNewRecord => 'नया रिकॉर्ड';

  @override
  String get achievementNewRecordDesc => 'अपना सर्वश्रेष्ठ चाल रिकॉर्ड तोड़ें';

  @override
  String get achievementFirstTry => 'पहली कोशिश';

  @override
  String get achievementFirstTryDesc => 'रीस्टार्ट के बिना पूरा';

  @override
  String get achievementNoExtraTube => 'बिना Extra Tube';

  @override
  String get achievementNoExtraTubeDesc => 'ट्यूब जोड़े बिना पूरा';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'रीस्टार्ट';

  @override
  String get hint => 'संकेत';

  @override
  String get addTube => 'ट्यूब जोड़ें';

  @override
  String get perfect => 'परफेक्ट!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'लेवल $levelString पूरा';
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

    return '$movesString चाल  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'नया रिकॉर्ड • उपलब्धियाँ';

  @override
  String get achievementsHeader => 'उपलब्धियाँ';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'संकेत दंड: -$amountString सिक्के';
  }

  @override
  String get doubleReward => 'दोगुना इनाम';

  @override
  String get goToLevels => 'लेवल';

  @override
  String get continueNext => 'जारी';

  @override
  String get backToLevelSelect => 'लेवल चयन पर';

  @override
  String get bestLabel => 'सर्वश्रेष्ठ';

  @override
  String get flowCombo => 'प्रवाह कॉम्बो';

  @override
  String get extraTube => 'Extra tube';

  @override
  String get fullReward => 'पूरा इनाम';

  @override
  String get halfReward => 'आधा इनाम';

  @override
  String get quarterReward => 'चौथाई इनाम';

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
  String get newRule => 'नया नियम';

  @override
  String get gotItStart => 'समझ गया, शुरू';

  @override
  String get firstTimeTipOnly => 'केवल पहली बार';

  @override
  String get mechanicBasicsTitle => 'कैसे खेलें';

  @override
  String get mechanicBasicsHeadline => 'ट्यूब चुनें, तरल डालें';

  @override
  String get mechanicBasicsBody =>
      'ट्यूब टैप कर ऊपर का रंग चुनें। फिर लक्ष्य ट्यूब — समान रंग चढ़ सकते हैं या खाली में डालें।';

  @override
  String get mechanicBasicsTip =>
      'लक्ष्य: हर भरी ट्यूब एक रंग। खाली ट्यूब सहायक हैं।';

  @override
  String get mechanicBasicsCaption => 'चुनें → डालें → क्रम';

  @override
  String get mechanicHiddenTitle => 'छिपी ट्यूब';

  @override
  String get mechanicHiddenHeadline => 'केवल ऊपर का रंग दिखे';

  @override
  String get mechanicHiddenBody =>
      'इस ट्यूब में केवल ऊपर का रंग। नीचे की परतें धुंधली, जब तक ऊपर खाली न हो।';

  @override
  String get mechanicHiddenTip =>
      'अंधाधुंध न डालें — पहले ऊपर साफ, नीचे देखें, फिर निर्णय।';

  @override
  String get mechanicHiddenCaption => 'ऊपर साफ • नीचे धुंध';

  @override
  String get mechanicMixTitle => 'रंग मिश्रण';

  @override
  String get mechanicMixHeadline => 'दो रंग नया रंग बनाते हैं';

  @override
  String get mechanicMixBody =>
      'कुछ रंग एक-दूसरे पर डालकर नया रंग। ऊपर समीकरणों का पालन करें।';

  @override
  String get mechanicMixTip => 'मात्रा मेल खानी चाहिए, लक्ष्य में जगह हो।';

  @override
  String get mechanicMixCaption => 'लाल + पीला = नारंगी';

  @override
  String get mechanicFrozenTitle => 'जमी ट्यूब';

  @override
  String get mechanicFrozenHeadline => 'कुछ समय अछूती';

  @override
  String get mechanicFrozenBody =>
      'जमी ट्यूब में/से नहीं डाल सकते। काफी चालों بعد बर्फ पिघलेगी।';

  @override
  String get mechanicFrozenTip =>
      'दूसरी ट्यूब से रास्ता खोलें; पिघलते ही उपयोग करें।';

  @override
  String get mechanicFrozenCaption => 'चालों का इंतज़ार → पिघले';

  @override
  String get mechanicLockedTitle => 'लॉक ट्यूब';

  @override
  String get mechanicLockedHeadline => 'पहले दूसरी ट्यूब पूरी';

  @override
  String get mechanicLockedBody =>
      'लॉक ट्यूब तब तक बंद, जब तक निर्धारित ट्यूब पूरी न हों।';

  @override
  String get mechanicLockedTip => 'पहले आसान ट्यूब, फिर लॉक स्थान।';

  @override
  String get mechanicLockedCaption => 'पूरा → अनलॉक';

  @override
  String get mechanicHeatedTitle => 'हीटर ट्यूब';

  @override
  String get mechanicHeatedHeadline => 'अतिरिक्त तरल vaporize';

  @override
  String get mechanicHeatedBody =>
      'हीटर में डाला तरल गायब। गर्मी सीमित — आमतौर पर extra रंग।';

  @override
  String get mechanicHeatedTip =>
      'गर्मी खत्म तो नहीं डाल सकते। extra जल्दी साफ।';

  @override
  String get mechanicHeatedCaption => 'extra → vapor';

  @override
  String get mechanicValveTitle => 'एकतरफ़ा वाल्व';

  @override
  String get mechanicValveHeadline => 'केवल अंदर';

  @override
  String get mechanicValveBody =>
      'वाल्व ट्यूब में डाल सकते, निकाल नहीं। स्थायी भंडार जैसा।';

  @override
  String get mechanicValveTip => 'गलत रंग फँसा सकता है। सावधानी से भरें।';

  @override
  String get mechanicValveCaption => 'केवल प्रवेश';

  @override
  String get mechanicPortalTitle => 'पोर्टल जोड़ी';

  @override
  String get mechanicPortalHeadline => 'एक में, दूसरे से बाहर';

  @override
  String get mechanicPortalBody =>
      'एक पोर्टल में डालें, तरल जुड़वाँ में। दो ट्यूब जुड़ी।';

  @override
  String get mechanicPortalTip => 'एक पोर्टल लक्षित — भरण दूसरी तरफ।';

  @override
  String get mechanicPortalCaption => 'A in → B out';

  @override
  String get mechanicBombTitle => 'बम ट्यूब';

  @override
  String get mechanicBombHeadline => 'टाइमर से पहले';

  @override
  String get mechanicBombBody =>
      'चिह्नित ट्यूब में उलटी गिनती। शून्य से पहले एक रंग से भरें।';

  @override
  String get mechanicBombTip => 'पहले बम सुरक्षित, फिर बाकी।';

  @override
  String get mechanicBombCaption => 'गिनती खत्म से पहले भरें';

  @override
  String get mechanicNarrowTitle => 'संकीर्ण ट्यूब';

  @override
  String get mechanicNarrowHeadline => 'क्षमता 2 बफर';

  @override
  String get mechanicNarrowBody =>
      'छोटी सहायक ट्यूब max 2 unit। tight चाल के लिए।';

  @override
  String get mechanicNarrowTip =>
      'पूरा करने के लिए खाली हो। 2 unit पूरा नहीं — फिर खाली करें।';

  @override
  String get mechanicNarrowCaption => 'क्षमता 2 • खाली पर पूरा';

  @override
  String get mechanicMovingTitle => 'चलता लेआउट';

  @override
  String get mechanicMovingHeadline => 'ट्यूब बदलती जगह';

  @override
  String get mechanicMovingBody =>
      'कुछ चालों में बोर्ड shift, क्रम बदले। वही ट्यूब — नई जगह।';

  @override
  String get mechanicMovingTip => 'id और रंग से ट्यूब track करें।';

  @override
  String get mechanicMovingCaption => 'हर 3 चाल shift';

  @override
  String get mechanicBossTitle => 'BOSS प्रयोग';

  @override
  String get mechanicBossHeadline => 'कठिन नियम';

  @override
  String get mechanicBossBody =>
      'Boss लेवल में चाल सीमा और कई special नियम। योजना से खेलें।';

  @override
  String get mechanicBossTip => 'Par के पास रहें; बेकार undo और डालने से बचें।';

  @override
  String get mechanicBossCaption => 'सीमा + special';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'लेवल $levelString';
  }

  @override
  String get movesLabel => 'चाल';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  असीमित retry  •  Offline';
  }

  @override
  String get pauseTooltip => 'रोकें';

  @override
  String get resumeTooltip => 'जारी';

  @override
  String get settingsTooltip => 'सेटिंग्स';

  @override
  String get pausedTitle => 'गेम रोका';

  @override
  String get pausedBody => 'टाइमर और countdown ध्वनि रुकी।';

  @override
  String get resumeCta => 'जारी';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString से';
  }

  @override
  String get easyRelaxed => 'आसान  •  आराम';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString चाल';
  }

  @override
  String get hiddenLiquid => 'छिपा तरल';

  @override
  String get frozenTube => 'जमी ट्यूब';

  @override
  String get iceCleared => 'बर्फ हटी';

  @override
  String get lockedTube => 'लॉक ट्यूब';

  @override
  String get lockOpened => 'ताला खुला';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'extra जलाएँ • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'हीट ट्यूब • $remainingString';
  }

  @override
  String get portalPair => 'पोर्टल जोड़ी';

  @override
  String get oneWayValve => 'एकतरफ़ा वाल्व';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'बम • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'हर $movesString चाल shift';
  }

  @override
  String get narrowTubeCap2 => 'संकीर्ण • क्षमता 2';

  @override
  String get hiddenMix => 'छिपा mix';

  @override
  String get portalFlow => 'पोर्टल प्रवाह!';

  @override
  String get tubesShifted => 'ट्यूब shift!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'बम: $remainingString चाल!';
  }

  @override
  String get iceBroken => 'बर्फ टूटी! जमी ट्यूब उपयोग योग्य।';

  @override
  String get lockUnlocked => 'ताला खुला! नई ट्यूब तैयार।';

  @override
  String get tubeFrozenMsg => 'यह ट्यूब जमी है। कुछ सही चालों में पिघलेगी।';

  @override
  String get tubeLockedMsg => 'यह ट्यूब लॉक। पहले दूसरा रंग पूरा करें।';

  @override
  String get valveOneWayMsg =>
      'सुनहरा वाल्व एकतरफ़ा: अंदर डाल सकते, बाहर नहीं।';

  @override
  String get heatExhaustedMsg => 'हीटर की burn charges खत्म।';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'पर्याप्त सिक्के नहीं ($costString)।';
  }

  @override
  String get adFailed => 'विज्ञापन पूरा नहीं हुआ।';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString सिक्के • $title फिर खुला';
  }

  @override
  String reopenAd(String title) {
    return 'विज्ञापन से खुला • $title';
  }

  @override
  String get tipQuotaEmpty => 'इस लेवल के संकेत खत्म।';

  @override
  String get rewardsNotReady => 'इनाम प्रणाली तैयार नहीं।';

  @override
  String get freeHintUsed => 'मुफ़्त संकेत उपयोग।';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'संकेत: -$costString सिक्के';
  }

  @override
  String get noHintAvailable => 'अभी उपयोगी संकेत नहीं।';

  @override
  String get assistHint => 'संकेत';

  @override
  String get assistUndo => 'undo';

  @override
  String get freeHintEarned => '1 मुफ़्त संकेत मिला।';

  @override
  String get freeUndoEarned => '1 मुफ़्त undo मिला।';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString क्रेडिट • असफल (न्यूनतम $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'ऋण सीमा ($floorString)। retry के लिए ad देखें।';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString क्रेडिट • restart';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'पर्याप्त सिक्के नहीं ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return '1 मुफ़्त $label के लिए ad देखें।';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'ऋण सीमा ($floorString)';
  }

  @override
  String get debtLimitBody => 'ऋण floor पर। retry के लिए ad देखें।';

  @override
  String get tipUnlockPaidBody =>
      'आपने यह नियम एक बार मुफ़्त देखा।\nफिर पढ़ने पर सिक्के।';

  @override
  String get tipUnlockAdBody => 'सिक्के कम।\nमुफ़्त खोलने ad देखें।';

  @override
  String get yourBalance => 'शेष: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '$costString भुगतान';
  }

  @override
  String get timeUp => 'समय समाप्त';

  @override
  String get bombExploded => 'बम फटा!';

  @override
  String get moveLimitReached => 'चाल सीमा पूरी';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'असफल: -$amountString क्रेडिट (ऋण min $floorString)।';
  }

  @override
  String get tryEasyModeHint => 'आसान mode में समय दबाव बंद कर सकते हैं।';

  @override
  String get bombFailHint =>
      'लाल countdown से पहले चिह्नित ट्यूब एक रंग से भरें।';

  @override
  String get bossFailHint =>
      'Boss प्रयोग चाल सीमा पार। mix और खाली ट्यूब plan करें।';

  @override
  String get debtLimitRetryHint => 'ऋण सीमा — retry ad देखें।';

  @override
  String get retryWithAd => 'AD देखें • RETRY';

  @override
  String get retryAgain => 'फिर कोशिश';

  @override
  String get vaporized => 'VAPORIZED!';

  @override
  String colorClearedBonus(String color) {
    return '$color साफ  •  +4 से';
  }

  @override
  String get newColorFormed => 'नया रंग!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 से';
  }

  @override
  String get legendaryFlow => 'पौराणिक प्रवाह!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'प्रवाह x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'पौराणिक प्रवाह';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'प्रवाह x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'ट्यूब $id, $unitsString unit भरी';
  }

  @override
  String get colorRed => 'लाल';

  @override
  String get colorBlue => 'नीला';

  @override
  String get colorPurple => 'बैंगनी';

  @override
  String get colorYellow => 'पीला';

  @override
  String get colorGreen => 'हरा';

  @override
  String get colorOrange => 'नारंगी';

  @override
  String get colorPink => 'गुलाबी';

  @override
  String get colorCyan => 'सियान';

  @override
  String get colorLime => 'नींबू';

  @override
  String get colorBrown => 'भूरा';

  @override
  String get skipLevelOfferBody =>
      'यह स्तर कठिन है। अगला अनलॉक करने के लिए विज्ञापन देखें।';

  @override
  String get skipLevelCta => 'विज्ञापन देखें • छोड़ें';

  @override
  String get skipLevelNote => 'आप बाद में लौटकर इस स्तर को पूरा कर सकते हैं।';

  @override
  String get skipLevelUnlocked => 'अगला स्तर अनलॉक हो गया!';

  @override
  String get developerModeTitle => 'डेवलपर मोड';

  @override
  String get developerModePasswordHint => 'पासवर्ड';

  @override
  String get developerModeUnlock => 'अनलॉक';

  @override
  String get developerModeEnabled => 'परीक्षण के लिए सभी स्तर अनलॉक हो गए।';

  @override
  String get developerModeWrongPassword => 'गलत पासवर्ड';

  @override
  String get developerModeActive => 'डेवलपर मोड सक्रिय';

  @override
  String get developerModeDisable => 'डेवलपर मोड बंद करें';
}
