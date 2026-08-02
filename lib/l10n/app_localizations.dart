import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Liquid Sort Puzzle'**
  String get appTitle;

  /// No description provided for @brandName.
  ///
  /// In en, this message translates to:
  /// **'Liquid Sort'**
  String get brandName;

  /// No description provided for @brandPuzzle.
  ///
  /// In en, this message translates to:
  /// **'PUZZLE'**
  String get brandPuzzle;

  /// No description provided for @splashTagline.
  ///
  /// In en, this message translates to:
  /// **'Sort the colors. Clear your mind.'**
  String get splashTagline;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'PLAY'**
  String get play;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @levels.
  ///
  /// In en, this message translates to:
  /// **'Levels'**
  String get levels;

  /// No description provided for @collection.
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection;

  /// No description provided for @achievements.
  ///
  /// In en, this message translates to:
  /// **'Achievements'**
  String get achievements;

  /// No description provided for @continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// No description provided for @pause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// No description provided for @coin.
  ///
  /// In en, this message translates to:
  /// **'Coin'**
  String get coin;

  /// No description provided for @coins.
  ///
  /// In en, this message translates to:
  /// **'Coins'**
  String get coins;

  /// No description provided for @secondsShort.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get secondsShort;

  /// No description provided for @moves.
  ///
  /// In en, this message translates to:
  /// **'Moves'**
  String get moves;

  /// No description provided for @best.
  ///
  /// In en, this message translates to:
  /// **'Best'**
  String get best;

  /// No description provided for @par.
  ///
  /// In en, this message translates to:
  /// **'Par'**
  String get par;

  /// No description provided for @locked.
  ///
  /// In en, this message translates to:
  /// **'Locked'**
  String get locked;

  /// No description provided for @ad.
  ///
  /// In en, this message translates to:
  /// **'AD'**
  String get ad;

  /// No description provided for @watchAd.
  ///
  /// In en, this message translates to:
  /// **'Watch ad'**
  String get watchAd;

  /// No description provided for @claiming.
  ///
  /// In en, this message translates to:
  /// **'Claiming...'**
  String get claiming;

  /// No description provided for @homeTagline.
  ///
  /// In en, this message translates to:
  /// **'Sort smart, mix colors!'**
  String get homeTagline;

  /// No description provided for @progressAndAchievements.
  ///
  /// In en, this message translates to:
  /// **'PROGRESS & ACHIEVEMENTS'**
  String get progressAndAchievements;

  /// No description provided for @progressTapHint.
  ///
  /// In en, this message translates to:
  /// **'Tap: stats and badges'**
  String get progressTapHint;

  /// No description provided for @dailyReward.
  ///
  /// In en, this message translates to:
  /// **'Daily Reward'**
  String get dailyReward;

  /// No description provided for @rewardReady.
  ///
  /// In en, this message translates to:
  /// **'Reward ready'**
  String get rewardReady;

  /// No description provided for @comeTomorrow.
  ///
  /// In en, this message translates to:
  /// **'Come tomorrow'**
  String get comeTomorrow;

  /// No description provided for @collectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Browse themes'**
  String get collectionSubtitle;

  /// No description provided for @premiumThemes.
  ///
  /// In en, this message translates to:
  /// **'PREMIUM THEMES'**
  String get premiumThemes;

  /// No description provided for @premiumThemesBody.
  ///
  /// In en, this message translates to:
  /// **'Classic, Galaxy, Ocean, Neon and Golden Age themes unlock here.'**
  String get premiumThemesBody;

  /// No description provided for @playCta.
  ///
  /// In en, this message translates to:
  /// **'PLAY'**
  String get playCta;

  /// No description provided for @dailyClaimSnack.
  ///
  /// In en, this message translates to:
  /// **'+{coins} coins{hintSuffix}'**
  String dailyClaimSnack(int coins, String hintSuffix);

  /// No description provided for @freeHintSuffix.
  ///
  /// In en, this message translates to:
  /// **' + {count} free hint'**
  String freeHintSuffix(int count);

  /// No description provided for @levelMapTitle.
  ///
  /// In en, this message translates to:
  /// **'LEVEL MAP'**
  String get levelMapTitle;

  /// No description provided for @levelsCompletedProgress.
  ///
  /// In en, this message translates to:
  /// **'{completed}/{total} levels completed'**
  String levelsCompletedProgress(int completed, int total);

  /// No description provided for @newExperimentsBanner.
  ///
  /// In en, this message translates to:
  /// **'NEW EXPERIMENTS\nPORTAL • BOMB • VALVE • REACTOR'**
  String get newExperimentsBanner;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'SETTINGS'**
  String get settingsTitle;

  /// No description provided for @settingsSubtitleAudio.
  ///
  /// In en, this message translates to:
  /// **'Sound and haptics controls'**
  String get settingsSubtitleAudio;

  /// No description provided for @settingsSubtitleVisual.
  ///
  /// In en, this message translates to:
  /// **'Colors, patterns and animations'**
  String get settingsSubtitleVisual;

  /// No description provided for @settingsSubtitleGeneral.
  ///
  /// In en, this message translates to:
  /// **'Difficulty and general preferences'**
  String get settingsSubtitleGeneral;

  /// No description provided for @sectionAudioFeedback.
  ///
  /// In en, this message translates to:
  /// **'SOUND & FEEDBACK'**
  String get sectionAudioFeedback;

  /// No description provided for @soundEffects.
  ///
  /// In en, this message translates to:
  /// **'Sound effects'**
  String get soundEffects;

  /// No description provided for @soundEffectsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select, pour and success sounds'**
  String get soundEffectsSubtitle;

  /// No description provided for @backgroundMusic.
  ///
  /// In en, this message translates to:
  /// **'Background music'**
  String get backgroundMusic;

  /// No description provided for @backgroundMusicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calm cosmic ambient music'**
  String get backgroundMusicSubtitle;

  /// No description provided for @haptics.
  ///
  /// In en, this message translates to:
  /// **'Haptics'**
  String get haptics;

  /// No description provided for @hapticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Light feedback on taps'**
  String get hapticsSubtitle;

  /// No description provided for @sectionVisual.
  ///
  /// In en, this message translates to:
  /// **'VISUAL PREFERENCES'**
  String get sectionVisual;

  /// No description provided for @neonPalette.
  ///
  /// In en, this message translates to:
  /// **'Neon liquid palette'**
  String get neonPalette;

  /// No description provided for @neonPaletteSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Vivid neon colors used in the game'**
  String get neonPaletteSubtitle;

  /// No description provided for @colorAccessibility.
  ///
  /// In en, this message translates to:
  /// **'Color accessibility'**
  String get colorAccessibility;

  /// No description provided for @colorAccessibilitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Adds subtle patterns to liquids'**
  String get colorAccessibilitySubtitle;

  /// No description provided for @reducedAnimations.
  ///
  /// In en, this message translates to:
  /// **'Reduced animations'**
  String get reducedAnimations;

  /// No description provided for @reducedAnimationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Speeds up pour motions'**
  String get reducedAnimationsSubtitle;

  /// No description provided for @sectionDifficulty.
  ///
  /// In en, this message translates to:
  /// **'DIFFICULTY & TIME PRESSURE'**
  String get sectionDifficulty;

  /// No description provided for @offlineProgress.
  ///
  /// In en, this message translates to:
  /// **'Offline progress'**
  String get offlineProgress;

  /// No description provided for @offlineProgressBody.
  ///
  /// In en, this message translates to:
  /// **'Your levels and settings are saved safely on this device.'**
  String get offlineProgressBody;

  /// No description provided for @settingsVersion.
  ///
  /// In en, this message translates to:
  /// **'Liquid Sort Puzzle  •  v{version}'**
  String settingsVersion(String version);

  /// No description provided for @tabAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get tabAudio;

  /// No description provided for @tabVisual.
  ///
  /// In en, this message translates to:
  /// **'Visual'**
  String get tabVisual;

  /// No description provided for @tabGeneral.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get tabGeneral;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose app language'**
  String get languageSubtitle;

  /// No description provided for @languageSystem.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get languageSystem;

  /// No description provided for @languageSystemSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Match your phone or tablet language'**
  String get languageSystemSubtitle;

  /// No description provided for @difficultyEasy.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get difficultyEasy;

  /// No description provided for @difficultyNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get difficultyNormal;

  /// No description provided for @difficultyHard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get difficultyHard;

  /// No description provided for @difficultyEasyDesc.
  ///
  /// In en, this message translates to:
  /// **'No time pressure • fewer coins • more interstitial ads'**
  String get difficultyEasyDesc;

  /// No description provided for @difficultyNormalDesc.
  ///
  /// In en, this message translates to:
  /// **'Moderate timer, light pressure'**
  String get difficultyNormalDesc;

  /// No description provided for @difficultyHardDesc.
  ///
  /// In en, this message translates to:
  /// **'Very short timer, -5s on mistakes'**
  String get difficultyHardDesc;

  /// No description provided for @dailyRewardTitle.
  ///
  /// In en, this message translates to:
  /// **'DAILY REWARD'**
  String get dailyRewardTitle;

  /// No description provided for @dailyRewardClaimBody.
  ///
  /// In en, this message translates to:
  /// **'Claim today\'s gift. Come back daily to grow the reward.'**
  String get dailyRewardClaimBody;

  /// No description provided for @dailyRewardClaimedBody.
  ///
  /// In en, this message translates to:
  /// **'You already claimed today. Come back tomorrow.'**
  String get dailyRewardClaimedBody;

  /// No description provided for @dailyStreak.
  ///
  /// In en, this message translates to:
  /// **'Streak: {streak} days'**
  String dailyStreak(int streak);

  /// No description provided for @dayChip.
  ///
  /// In en, this message translates to:
  /// **'D{day}'**
  String dayChip(int day);

  /// No description provided for @plusHint.
  ///
  /// In en, this message translates to:
  /// **'+hint'**
  String get plusHint;

  /// No description provided for @claimDailyReward.
  ///
  /// In en, this message translates to:
  /// **'Claim today\'s reward'**
  String get claimDailyReward;

  /// No description provided for @comeAgainTomorrow.
  ///
  /// In en, this message translates to:
  /// **'Come again tomorrow'**
  String get comeAgainTomorrow;

  /// No description provided for @achievementsTitle.
  ///
  /// In en, this message translates to:
  /// **'ACHIEVEMENTS'**
  String get achievementsTitle;

  /// No description provided for @achGreetingEmpty.
  ///
  /// In en, this message translates to:
  /// **'You\'re set. Finish your first level and badges will start stacking here.'**
  String get achGreetingEmpty;

  /// No description provided for @achGreetingFlow.
  ///
  /// In en, this message translates to:
  /// **'Your flow is on fire — you\'ve got this game\'s rhythm.'**
  String get achGreetingFlow;

  /// No description provided for @achGreetingStars.
  ///
  /// In en, this message translates to:
  /// **'Your star collection shines. Keep going, legend.'**
  String get achGreetingStars;

  /// No description provided for @achGreetingVeteran.
  ///
  /// In en, this message translates to:
  /// **'Nice pace. The lab is matching your tempo.'**
  String get achGreetingVeteran;

  /// No description provided for @achGreetingProgress.
  ///
  /// In en, this message translates to:
  /// **'Solid progress. Every clean level makes you sharper.'**
  String get achGreetingProgress;

  /// No description provided for @achGreetingStarter.
  ///
  /// In en, this message translates to:
  /// **'Strong start. A few more levels and badges will pour in.'**
  String get achGreetingStarter;

  /// No description provided for @statLevel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get statLevel;

  /// No description provided for @statStars.
  ///
  /// In en, this message translates to:
  /// **'Stars'**
  String get statStars;

  /// No description provided for @statCoins.
  ///
  /// In en, this message translates to:
  /// **'Coins'**
  String get statCoins;

  /// No description provided for @statFlow.
  ///
  /// In en, this message translates to:
  /// **'Flow'**
  String get statFlow;

  /// No description provided for @statUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Unlocked'**
  String get statUnlocked;

  /// No description provided for @achievementLocked.
  ///
  /// In en, this message translates to:
  /// **'Locked'**
  String get achievementLocked;

  /// No description provided for @achievementPerfectSort.
  ///
  /// In en, this message translates to:
  /// **'Perfect Sort'**
  String get achievementPerfectSort;

  /// No description provided for @achievementPerfectSortDesc.
  ///
  /// In en, this message translates to:
  /// **'Finish within par with no assistance'**
  String get achievementPerfectSortDesc;

  /// No description provided for @achievementUnderPar.
  ///
  /// In en, this message translates to:
  /// **'Under Par'**
  String get achievementUnderPar;

  /// No description provided for @achievementUnderParDesc.
  ///
  /// In en, this message translates to:
  /// **'Do not exceed the target moves'**
  String get achievementUnderParDesc;

  /// No description provided for @achievementNoUndo.
  ///
  /// In en, this message translates to:
  /// **'No Undo'**
  String get achievementNoUndo;

  /// No description provided for @achievementNoUndoDesc.
  ///
  /// In en, this message translates to:
  /// **'Finish without using undo'**
  String get achievementNoUndoDesc;

  /// No description provided for @achievementNoHint.
  ///
  /// In en, this message translates to:
  /// **'No Hints'**
  String get achievementNoHint;

  /// No description provided for @achievementNoHintDesc.
  ///
  /// In en, this message translates to:
  /// **'Solve without using hints'**
  String get achievementNoHintDesc;

  /// No description provided for @achievementFlowMaster.
  ///
  /// In en, this message translates to:
  /// **'Flow Master'**
  String get achievementFlowMaster;

  /// No description provided for @achievementFlowMasterDesc.
  ///
  /// In en, this message translates to:
  /// **'Reach Flow x5 in a level'**
  String get achievementFlowMasterDesc;

  /// No description provided for @achievementNewRecord.
  ///
  /// In en, this message translates to:
  /// **'New Record'**
  String get achievementNewRecord;

  /// No description provided for @achievementNewRecordDesc.
  ///
  /// In en, this message translates to:
  /// **'Beat your best move count'**
  String get achievementNewRecordDesc;

  /// No description provided for @achievementFirstTry.
  ///
  /// In en, this message translates to:
  /// **'First Try'**
  String get achievementFirstTry;

  /// No description provided for @achievementFirstTryDesc.
  ///
  /// In en, this message translates to:
  /// **'Complete without restarting'**
  String get achievementFirstTryDesc;

  /// No description provided for @achievementNoExtraTube.
  ///
  /// In en, this message translates to:
  /// **'No Extra Tube'**
  String get achievementNoExtraTube;

  /// No description provided for @achievementNoExtraTubeDesc.
  ///
  /// In en, this message translates to:
  /// **'Finish without adding a tube'**
  String get achievementNoExtraTubeDesc;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @hint.
  ///
  /// In en, this message translates to:
  /// **'Hint'**
  String get hint;

  /// No description provided for @addTube.
  ///
  /// In en, this message translates to:
  /// **'Add tube'**
  String get addTube;

  /// No description provided for @perfect.
  ///
  /// In en, this message translates to:
  /// **'PERFECT!'**
  String get perfect;

  /// No description provided for @levelCompleted.
  ///
  /// In en, this message translates to:
  /// **'Level {level} complete'**
  String levelCompleted(int level);

  /// No description provided for @movesAndPar.
  ///
  /// In en, this message translates to:
  /// **'{moves} moves  •  Par {par}'**
  String movesAndPar(int moves, int par);

  /// No description provided for @newRecordAchievements.
  ///
  /// In en, this message translates to:
  /// **'NEW RECORD • ACHIEVEMENTS'**
  String get newRecordAchievements;

  /// No description provided for @achievementsHeader.
  ///
  /// In en, this message translates to:
  /// **'ACHIEVEMENTS'**
  String get achievementsHeader;

  /// No description provided for @assistancePenalty.
  ///
  /// In en, this message translates to:
  /// **'Hint penalty: -{amount} coins'**
  String assistancePenalty(int amount);

  /// No description provided for @doubleReward.
  ///
  /// In en, this message translates to:
  /// **'DOUBLE REWARD'**
  String get doubleReward;

  /// No description provided for @goToLevels.
  ///
  /// In en, this message translates to:
  /// **'LEVELS'**
  String get goToLevels;

  /// No description provided for @continueNext.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE'**
  String get continueNext;

  /// No description provided for @backToLevelSelect.
  ///
  /// In en, this message translates to:
  /// **'Back to level select'**
  String get backToLevelSelect;

  /// No description provided for @bestLabel.
  ///
  /// In en, this message translates to:
  /// **'Best'**
  String get bestLabel;

  /// No description provided for @flowCombo.
  ///
  /// In en, this message translates to:
  /// **'Flow Combo'**
  String get flowCombo;

  /// No description provided for @extraTube.
  ///
  /// In en, this message translates to:
  /// **'Extra tube'**
  String get extraTube;

  /// No description provided for @fullReward.
  ///
  /// In en, this message translates to:
  /// **'Full reward'**
  String get fullReward;

  /// No description provided for @halfReward.
  ///
  /// In en, this message translates to:
  /// **'Half reward'**
  String get halfReward;

  /// No description provided for @quarterReward.
  ///
  /// In en, this message translates to:
  /// **'Quarter reward'**
  String get quarterReward;

  /// No description provided for @starRewardLabel.
  ///
  /// In en, this message translates to:
  /// **'{stars}★ • {tone} ({percent}%)'**
  String starRewardLabel(int stars, String tone, int percent);

  /// No description provided for @newRule.
  ///
  /// In en, this message translates to:
  /// **'NEW RULE'**
  String get newRule;

  /// No description provided for @gotItStart.
  ///
  /// In en, this message translates to:
  /// **'GOT IT, START'**
  String get gotItStart;

  /// No description provided for @firstTimeTipOnly.
  ///
  /// In en, this message translates to:
  /// **'Shown only the first time'**
  String get firstTimeTipOnly;

  /// No description provided for @mechanicBasicsTitle.
  ///
  /// In en, this message translates to:
  /// **'HOW TO PLAY'**
  String get mechanicBasicsTitle;

  /// No description provided for @mechanicBasicsHeadline.
  ///
  /// In en, this message translates to:
  /// **'Pick tubes, pour liquid'**
  String get mechanicBasicsHeadline;

  /// No description provided for @mechanicBasicsBody.
  ///
  /// In en, this message translates to:
  /// **'Tap a tube to select its top color. Then tap a target tube — matching colors can stack, or pour into an empty tube.'**
  String get mechanicBasicsBody;

  /// No description provided for @mechanicBasicsTip.
  ///
  /// In en, this message translates to:
  /// **'Goal: every filled tube becomes one solid color. Empty tubes are helpers.'**
  String get mechanicBasicsTip;

  /// No description provided for @mechanicBasicsCaption.
  ///
  /// In en, this message translates to:
  /// **'Select → Pour → Sort'**
  String get mechanicBasicsCaption;

  /// No description provided for @mechanicHiddenTitle.
  ///
  /// In en, this message translates to:
  /// **'HIDDEN TUBE'**
  String get mechanicHiddenTitle;

  /// No description provided for @mechanicHiddenHeadline.
  ///
  /// In en, this message translates to:
  /// **'Only the top color is visible'**
  String get mechanicHiddenHeadline;

  /// No description provided for @mechanicHiddenBody.
  ///
  /// In en, this message translates to:
  /// **'In this tube you only see the top color. Layers below stay foggy until the top clears.'**
  String get mechanicHiddenBody;

  /// No description provided for @mechanicHiddenTip.
  ///
  /// In en, this message translates to:
  /// **'Don\'t pour blind — clear the top first, reveal below, then decide.'**
  String get mechanicHiddenTip;

  /// No description provided for @mechanicHiddenCaption.
  ///
  /// In en, this message translates to:
  /// **'Top clear • lower foggy'**
  String get mechanicHiddenCaption;

  /// No description provided for @mechanicMixTitle.
  ///
  /// In en, this message translates to:
  /// **'COLOR MIXING'**
  String get mechanicMixTitle;

  /// No description provided for @mechanicMixHeadline.
  ///
  /// In en, this message translates to:
  /// **'Two colors combine into a new one'**
  String get mechanicMixHeadline;

  /// No description provided for @mechanicMixBody.
  ///
  /// In en, this message translates to:
  /// **'Pour certain colors onto each other to mix a new color. Follow the equations shown on top.'**
  String get mechanicMixBody;

  /// No description provided for @mechanicMixTip.
  ///
  /// In en, this message translates to:
  /// **'Amounts must match and the target needs free space.'**
  String get mechanicMixTip;

  /// No description provided for @mechanicMixCaption.
  ///
  /// In en, this message translates to:
  /// **'Red + Yellow = Orange'**
  String get mechanicMixCaption;

  /// No description provided for @mechanicFrozenTitle.
  ///
  /// In en, this message translates to:
  /// **'FROZEN TUBE'**
  String get mechanicFrozenTitle;

  /// No description provided for @mechanicFrozenHeadline.
  ///
  /// In en, this message translates to:
  /// **'Untouchable for a while'**
  String get mechanicFrozenHeadline;

  /// No description provided for @mechanicFrozenBody.
  ///
  /// In en, this message translates to:
  /// **'You can\'t pour into or out of an iced tube. After enough moves, the ice melts.'**
  String get mechanicFrozenBody;

  /// No description provided for @mechanicFrozenTip.
  ///
  /// In en, this message translates to:
  /// **'Open a path with other tubes; use it as soon as ice clears.'**
  String get mechanicFrozenTip;

  /// No description provided for @mechanicFrozenCaption.
  ///
  /// In en, this message translates to:
  /// **'Wait moves → ice melts'**
  String get mechanicFrozenCaption;

  /// No description provided for @mechanicLockedTitle.
  ///
  /// In en, this message translates to:
  /// **'LOCKED TUBE'**
  String get mechanicLockedTitle;

  /// No description provided for @mechanicLockedHeadline.
  ///
  /// In en, this message translates to:
  /// **'Finish another tube first'**
  String get mechanicLockedHeadline;

  /// No description provided for @mechanicLockedBody.
  ///
  /// In en, this message translates to:
  /// **'A locked tube stays closed until you complete a set number of tubes.'**
  String get mechanicLockedBody;

  /// No description provided for @mechanicLockedTip.
  ///
  /// In en, this message translates to:
  /// **'Finish easy tubes first, then use the locked space.'**
  String get mechanicLockedTip;

  /// No description provided for @mechanicLockedCaption.
  ///
  /// In en, this message translates to:
  /// **'Complete → unlock'**
  String get mechanicLockedCaption;

  /// No description provided for @mechanicHeatedTitle.
  ///
  /// In en, this message translates to:
  /// **'HEATER TUBE'**
  String get mechanicHeatedTitle;

  /// No description provided for @mechanicHeatedHeadline.
  ///
  /// In en, this message translates to:
  /// **'Vaporize waste liquid'**
  String get mechanicHeatedHeadline;

  /// No description provided for @mechanicHeatedBody.
  ///
  /// In en, this message translates to:
  /// **'Liquid poured into the heater disappears. Heat charges are limited — usually for waste colors.'**
  String get mechanicHeatedBody;

  /// No description provided for @mechanicHeatedTip.
  ///
  /// In en, this message translates to:
  /// **'When heat is gone you can\'t pour there. Clear waste early.'**
  String get mechanicHeatedTip;

  /// No description provided for @mechanicHeatedCaption.
  ///
  /// In en, this message translates to:
  /// **'Waste → vapor'**
  String get mechanicHeatedCaption;

  /// No description provided for @mechanicValveTitle.
  ///
  /// In en, this message translates to:
  /// **'ONE-WAY VALVE'**
  String get mechanicValveTitle;

  /// No description provided for @mechanicValveHeadline.
  ///
  /// In en, this message translates to:
  /// **'Only pours in'**
  String get mechanicValveHeadline;

  /// No description provided for @mechanicValveBody.
  ///
  /// In en, this message translates to:
  /// **'You can pour into a valve tube but can\'t take liquid out. It acts like a permanent store.'**
  String get mechanicValveBody;

  /// No description provided for @mechanicValveTip.
  ///
  /// In en, this message translates to:
  /// **'Wrong color can trap you. Fill valves carefully.'**
  String get mechanicValveTip;

  /// No description provided for @mechanicValveCaption.
  ///
  /// In en, this message translates to:
  /// **'In only'**
  String get mechanicValveCaption;

  /// No description provided for @mechanicPortalTitle.
  ///
  /// In en, this message translates to:
  /// **'PORTAL PAIR'**
  String get mechanicPortalTitle;

  /// No description provided for @mechanicPortalHeadline.
  ///
  /// In en, this message translates to:
  /// **'Enter one, exit the other'**
  String get mechanicPortalHeadline;

  /// No description provided for @mechanicPortalBody.
  ///
  /// In en, this message translates to:
  /// **'Pour into one portal and the liquid appears in its twin. The two tubes are linked.'**
  String get mechanicPortalBody;

  /// No description provided for @mechanicPortalTip.
  ///
  /// In en, this message translates to:
  /// **'Target one portal — the fill happens on the other side.'**
  String get mechanicPortalTip;

  /// No description provided for @mechanicPortalCaption.
  ///
  /// In en, this message translates to:
  /// **'A in → B out'**
  String get mechanicPortalCaption;

  /// No description provided for @mechanicBombTitle.
  ///
  /// In en, this message translates to:
  /// **'BOMB TUBE'**
  String get mechanicBombTitle;

  /// No description provided for @mechanicBombHeadline.
  ///
  /// In en, this message translates to:
  /// **'Finish before the timer'**
  String get mechanicBombHeadline;

  /// No description provided for @mechanicBombBody.
  ///
  /// In en, this message translates to:
  /// **'The marked tube has a countdown. Fill it with one color before it hits zero or the level fails.'**
  String get mechanicBombBody;

  /// No description provided for @mechanicBombTip.
  ///
  /// In en, this message translates to:
  /// **'Secure the bomb tube first, then sort the rest.'**
  String get mechanicBombTip;

  /// No description provided for @mechanicBombCaption.
  ///
  /// In en, this message translates to:
  /// **'Fill before countdown ends'**
  String get mechanicBombCaption;

  /// No description provided for @mechanicNarrowTitle.
  ///
  /// In en, this message translates to:
  /// **'NARROW TUBE'**
  String get mechanicNarrowTitle;

  /// No description provided for @mechanicNarrowHeadline.
  ///
  /// In en, this message translates to:
  /// **'Capacity-2 buffer'**
  String get mechanicNarrowHeadline;

  /// No description provided for @mechanicNarrowBody.
  ///
  /// In en, this message translates to:
  /// **'This level has a short helper tube that holds at most 2 units. Use it for tight maneuvers.'**
  String get mechanicNarrowBody;

  /// No description provided for @mechanicNarrowTip.
  ///
  /// In en, this message translates to:
  /// **'It must be empty to finish. Holding 2 units does not count as complete — empty it again.'**
  String get mechanicNarrowTip;

  /// No description provided for @mechanicNarrowCaption.
  ///
  /// In en, this message translates to:
  /// **'Capacity 2 • empty to finish'**
  String get mechanicNarrowCaption;

  /// No description provided for @mechanicMovingTitle.
  ///
  /// In en, this message translates to:
  /// **'MOVING LAYOUT'**
  String get mechanicMovingTitle;

  /// No description provided for @mechanicMovingHeadline.
  ///
  /// In en, this message translates to:
  /// **'Tubes swap places'**
  String get mechanicMovingHeadline;

  /// No description provided for @mechanicMovingBody.
  ///
  /// In en, this message translates to:
  /// **'Every few moves the board shifts and tube order changes. Same tubes — new positions.'**
  String get mechanicMovingBody;

  /// No description provided for @mechanicMovingTip.
  ///
  /// In en, this message translates to:
  /// **'Track tubes by id and colors.'**
  String get mechanicMovingTip;

  /// No description provided for @mechanicMovingCaption.
  ///
  /// In en, this message translates to:
  /// **'Shifts every 3 moves'**
  String get mechanicMovingCaption;

  /// No description provided for @mechanicBossTitle.
  ///
  /// In en, this message translates to:
  /// **'BOSS EXPERIMENT'**
  String get mechanicBossTitle;

  /// No description provided for @mechanicBossHeadline.
  ///
  /// In en, this message translates to:
  /// **'Tougher rules'**
  String get mechanicBossHeadline;

  /// No description provided for @mechanicBossBody.
  ///
  /// In en, this message translates to:
  /// **'Boss levels have a move limit and may combine several special rules. Play with a plan.'**
  String get mechanicBossBody;

  /// No description provided for @mechanicBossTip.
  ///
  /// In en, this message translates to:
  /// **'Stay near par; avoid wasteful undos and messy pours.'**
  String get mechanicBossTip;

  /// No description provided for @mechanicBossCaption.
  ///
  /// In en, this message translates to:
  /// **'Limit + special rules'**
  String get mechanicBossCaption;

  /// No description provided for @levelNumber.
  ///
  /// In en, this message translates to:
  /// **'Level {level}'**
  String levelNumber(int level);

  /// No description provided for @movesLabel.
  ///
  /// In en, this message translates to:
  /// **'Moves'**
  String get movesLabel;

  /// No description provided for @headerMeta.
  ///
  /// In en, this message translates to:
  /// **'Par {par}  •  Unlimited retries  •  Offline'**
  String headerMeta(int par);

  /// No description provided for @pauseTooltip.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pauseTooltip;

  /// No description provided for @resumeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resumeTooltip;

  /// No description provided for @settingsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTooltip;

  /// No description provided for @pausedTitle.
  ///
  /// In en, this message translates to:
  /// **'GAME PAUSED'**
  String get pausedTitle;

  /// No description provided for @pausedBody.
  ///
  /// In en, this message translates to:
  /// **'Timer and countdown sounds are paused.'**
  String get pausedBody;

  /// No description provided for @resumeCta.
  ///
  /// In en, this message translates to:
  /// **'RESUME'**
  String get resumeCta;

  /// No description provided for @tempoBadge.
  ///
  /// In en, this message translates to:
  /// **'{difficulty}  {seconds} s'**
  String tempoBadge(String difficulty, int seconds);

  /// No description provided for @easyRelaxed.
  ///
  /// In en, this message translates to:
  /// **'EASY  •  RELAXED'**
  String get easyRelaxed;

  /// No description provided for @bossMovesLeft.
  ///
  /// In en, this message translates to:
  /// **'BOSS • {moves} MOVES'**
  String bossMovesLeft(int moves);

  /// No description provided for @hiddenLiquid.
  ///
  /// In en, this message translates to:
  /// **'HIDDEN LIQUID'**
  String get hiddenLiquid;

  /// No description provided for @frozenTube.
  ///
  /// In en, this message translates to:
  /// **'FROZEN TUBE'**
  String get frozenTube;

  /// No description provided for @iceCleared.
  ///
  /// In en, this message translates to:
  /// **'ICE CLEARED'**
  String get iceCleared;

  /// No description provided for @lockedTube.
  ///
  /// In en, this message translates to:
  /// **'LOCKED TUBE'**
  String get lockedTube;

  /// No description provided for @lockOpened.
  ///
  /// In en, this message translates to:
  /// **'LOCK OPENED'**
  String get lockOpened;

  /// No description provided for @heatBurn.
  ///
  /// In en, this message translates to:
  /// **'BURN WASTE • {remaining}'**
  String heatBurn(int remaining);

  /// No description provided for @heatTube.
  ///
  /// In en, this message translates to:
  /// **'HEAT TUBE • {remaining}'**
  String heatTube(int remaining);

  /// No description provided for @portalPair.
  ///
  /// In en, this message translates to:
  /// **'PORTAL PAIR'**
  String get portalPair;

  /// No description provided for @oneWayValve.
  ///
  /// In en, this message translates to:
  /// **'ONE-WAY VALVE'**
  String get oneWayValve;

  /// No description provided for @bombCountdown.
  ///
  /// In en, this message translates to:
  /// **'BOMB • {remaining}'**
  String bombCountdown(int remaining);

  /// No description provided for @movingEvery.
  ///
  /// In en, this message translates to:
  /// **'MOVES EVERY {moves}'**
  String movingEvery(int moves);

  /// No description provided for @narrowTubeCap2.
  ///
  /// In en, this message translates to:
  /// **'NARROW TUBE • CAP 2'**
  String get narrowTubeCap2;

  /// No description provided for @hiddenMix.
  ///
  /// In en, this message translates to:
  /// **'HIDDEN MIX'**
  String get hiddenMix;

  /// No description provided for @portalFlow.
  ///
  /// In en, this message translates to:
  /// **'PORTAL FLOW!'**
  String get portalFlow;

  /// No description provided for @tubesShifted.
  ///
  /// In en, this message translates to:
  /// **'TUBES SHIFTED!'**
  String get tubesShifted;

  /// No description provided for @bombMovesLeft.
  ///
  /// In en, this message translates to:
  /// **'BOMB: {remaining} MOVES!'**
  String bombMovesLeft(int remaining);

  /// No description provided for @iceBroken.
  ///
  /// In en, this message translates to:
  /// **'Ice broken! The frozen tube is usable now.'**
  String get iceBroken;

  /// No description provided for @lockUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Lock opened! A new tube is ready.'**
  String get lockUnlocked;

  /// No description provided for @tubeFrozenMsg.
  ///
  /// In en, this message translates to:
  /// **'This tube is frozen. A few correct moves will thaw it.'**
  String get tubeFrozenMsg;

  /// No description provided for @tubeLockedMsg.
  ///
  /// In en, this message translates to:
  /// **'This tube is locked. Complete another color first.'**
  String get tubeLockedMsg;

  /// No description provided for @valveOneWayMsg.
  ///
  /// In en, this message translates to:
  /// **'The gold valve is one-way: you can pour in, but not out.'**
  String get valveOneWayMsg;

  /// No description provided for @heatExhaustedMsg.
  ///
  /// In en, this message translates to:
  /// **'This heater is out of burn charges.'**
  String get heatExhaustedMsg;

  /// No description provided for @insufficientCoins.
  ///
  /// In en, this message translates to:
  /// **'Not enough coins ({cost}).'**
  String insufficientCoins(int cost);

  /// No description provided for @adFailed.
  ///
  /// In en, this message translates to:
  /// **'Ad could not be completed.'**
  String get adFailed;

  /// No description provided for @reopenPaid.
  ///
  /// In en, this message translates to:
  /// **'-{cost} coins • {title} reopened'**
  String reopenPaid(int cost, String title);

  /// No description provided for @reopenAd.
  ///
  /// In en, this message translates to:
  /// **'Opened with ad • {title}'**
  String reopenAd(String title);

  /// No description provided for @tipQuotaEmpty.
  ///
  /// In en, this message translates to:
  /// **'You\'re out of hints for this level.'**
  String get tipQuotaEmpty;

  /// No description provided for @rewardsNotReady.
  ///
  /// In en, this message translates to:
  /// **'Reward system is not ready.'**
  String get rewardsNotReady;

  /// No description provided for @freeHintUsed.
  ///
  /// In en, this message translates to:
  /// **'Free hint used.'**
  String get freeHintUsed;

  /// No description provided for @hintCost.
  ///
  /// In en, this message translates to:
  /// **'Hint: -{cost} coins'**
  String hintCost(int cost);

  /// No description provided for @noHintAvailable.
  ///
  /// In en, this message translates to:
  /// **'No useful hint right now.'**
  String get noHintAvailable;

  /// No description provided for @assistHint.
  ///
  /// In en, this message translates to:
  /// **'hint'**
  String get assistHint;

  /// No description provided for @assistUndo.
  ///
  /// In en, this message translates to:
  /// **'undo'**
  String get assistUndo;

  /// No description provided for @freeHintEarned.
  ///
  /// In en, this message translates to:
  /// **'1 free hint earned.'**
  String get freeHintEarned;

  /// No description provided for @freeUndoEarned.
  ///
  /// In en, this message translates to:
  /// **'1 free undo earned.'**
  String get freeUndoEarned;

  /// No description provided for @failureCredit.
  ///
  /// In en, this message translates to:
  /// **'-{deducted} credit • failed attempt (min {floor})'**
  String failureCredit(int deducted, int floor);

  /// No description provided for @debtLimitToast.
  ///
  /// In en, this message translates to:
  /// **'Debt limit ({floor}). Watch an ad to retry.'**
  String debtLimitToast(int floor);

  /// No description provided for @restartCredit.
  ///
  /// In en, this message translates to:
  /// **'-{deducted} credit • restart'**
  String restartCredit(int deducted);

  /// No description provided for @insufficientCoinsTitle.
  ///
  /// In en, this message translates to:
  /// **'Not enough coins ({cost})'**
  String insufficientCoinsTitle(int cost);

  /// No description provided for @watchAdEarnAssist.
  ///
  /// In en, this message translates to:
  /// **'Watch an ad to earn 1 free {label}.'**
  String watchAdEarnAssist(String label);

  /// No description provided for @debtLimitTitle.
  ///
  /// In en, this message translates to:
  /// **'Debt limit ({floor})'**
  String debtLimitTitle(int floor);

  /// No description provided for @debtLimitBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re at the debt floor. Watch an ad to try again.'**
  String get debtLimitBody;

  /// No description provided for @tipUnlockPaidBody.
  ///
  /// In en, this message translates to:
  /// **'You saw this rule once for free.\nRe-reading costs coins.'**
  String get tipUnlockPaidBody;

  /// No description provided for @tipUnlockAdBody.
  ///
  /// In en, this message translates to:
  /// **'Not enough coins.\nWatch an ad to open this tip for free.'**
  String get tipUnlockAdBody;

  /// No description provided for @yourBalance.
  ///
  /// In en, this message translates to:
  /// **'Balance: '**
  String get yourBalance;

  /// No description provided for @payCost.
  ///
  /// In en, this message translates to:
  /// **'Pay {cost}'**
  String payCost(int cost);

  /// No description provided for @timeUp.
  ///
  /// In en, this message translates to:
  /// **'TIME\'S UP'**
  String get timeUp;

  /// No description provided for @bombExploded.
  ///
  /// In en, this message translates to:
  /// **'BOMB EXPLODED'**
  String get bombExploded;

  /// No description provided for @moveLimitReached.
  ///
  /// In en, this message translates to:
  /// **'MOVE LIMIT REACHED'**
  String get moveLimitReached;

  /// No description provided for @failurePenaltyLine.
  ///
  /// In en, this message translates to:
  /// **'Failed attempt: -{amount} credit (debt min {floor}).'**
  String failurePenaltyLine(int amount, int floor);

  /// No description provided for @tryEasyModeHint.
  ///
  /// In en, this message translates to:
  /// **'You can turn off time pressure in Easy mode.'**
  String get tryEasyModeHint;

  /// No description provided for @bombFailHint.
  ///
  /// In en, this message translates to:
  /// **'Fill the marked tube with one color before the red countdown ends.'**
  String get bombFailHint;

  /// No description provided for @bossFailHint.
  ///
  /// In en, this message translates to:
  /// **'Boss experiment exceeded the move limit. Plan mixes and empty tubes carefully.'**
  String get bossFailHint;

  /// No description provided for @debtLimitRetryHint.
  ///
  /// In en, this message translates to:
  /// **'You\'re at the debt limit — watch an ad to retry.'**
  String get debtLimitRetryHint;

  /// No description provided for @retryWithAd.
  ///
  /// In en, this message translates to:
  /// **'WATCH AD • RETRY'**
  String get retryWithAd;

  /// No description provided for @retryAgain.
  ///
  /// In en, this message translates to:
  /// **'TRY AGAIN'**
  String get retryAgain;

  /// No description provided for @vaporized.
  ///
  /// In en, this message translates to:
  /// **'VAPORIZED!'**
  String get vaporized;

  /// No description provided for @colorClearedBonus.
  ///
  /// In en, this message translates to:
  /// **'{color} CLEARED  •  +4 S'**
  String colorClearedBonus(String color);

  /// No description provided for @newColorFormed.
  ///
  /// In en, this message translates to:
  /// **'NEW COLOR FORMED!'**
  String get newColorFormed;

  /// No description provided for @colorBonusSeconds.
  ///
  /// In en, this message translates to:
  /// **'{color}  •  +6 S'**
  String colorBonusSeconds(String color);

  /// No description provided for @legendaryFlow.
  ///
  /// In en, this message translates to:
  /// **'LEGENDARY FLOW!'**
  String get legendaryFlow;

  /// No description provided for @flowMultiplier.
  ///
  /// In en, this message translates to:
  /// **'FLOW x{combo}'**
  String flowMultiplier(int combo);

  /// No description provided for @legendaryFlowLabel.
  ///
  /// In en, this message translates to:
  /// **'Legendary Flow'**
  String get legendaryFlowLabel;

  /// No description provided for @flowLabel.
  ///
  /// In en, this message translates to:
  /// **'FLOW x{multiplier}'**
  String flowLabel(int multiplier);

  /// No description provided for @tubeSemantics.
  ///
  /// In en, this message translates to:
  /// **'Tube {id}, {units} units filled'**
  String tubeSemantics(String id, int units);

  /// No description provided for @colorRed.
  ///
  /// In en, this message translates to:
  /// **'Red'**
  String get colorRed;

  /// No description provided for @colorBlue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get colorBlue;

  /// No description provided for @colorPurple.
  ///
  /// In en, this message translates to:
  /// **'Purple'**
  String get colorPurple;

  /// No description provided for @colorYellow.
  ///
  /// In en, this message translates to:
  /// **'Yellow'**
  String get colorYellow;

  /// No description provided for @colorGreen.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get colorGreen;

  /// No description provided for @colorOrange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get colorOrange;

  /// No description provided for @colorPink.
  ///
  /// In en, this message translates to:
  /// **'Pink'**
  String get colorPink;

  /// No description provided for @colorCyan.
  ///
  /// In en, this message translates to:
  /// **'Cyan'**
  String get colorCyan;

  /// No description provided for @colorLime.
  ///
  /// In en, this message translates to:
  /// **'Lime'**
  String get colorLime;

  /// No description provided for @colorBrown.
  ///
  /// In en, this message translates to:
  /// **'Brown'**
  String get colorBrown;

  /// No description provided for @skipLevelOfferBody.
  ///
  /// In en, this message translates to:
  /// **'This level is tough. Watch an ad to unlock the next one.'**
  String get skipLevelOfferBody;

  /// No description provided for @skipLevelCta.
  ///
  /// In en, this message translates to:
  /// **'WATCH AD • SKIP'**
  String get skipLevelCta;

  /// No description provided for @skipLevelNote.
  ///
  /// In en, this message translates to:
  /// **'You can come back and finish this level later.'**
  String get skipLevelNote;

  /// No description provided for @skipLevelUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Next level unlocked!'**
  String get skipLevelUnlocked;

  /// No description provided for @developerModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Developer Mode'**
  String get developerModeTitle;

  /// No description provided for @developerModePasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get developerModePasswordHint;

  /// No description provided for @developerModeUnlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get developerModeUnlock;

  /// No description provided for @developerModeEnabled.
  ///
  /// In en, this message translates to:
  /// **'All levels unlocked for testing.'**
  String get developerModeEnabled;

  /// No description provided for @developerModeWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password'**
  String get developerModeWrongPassword;

  /// No description provided for @developerModeActive.
  ///
  /// In en, this message translates to:
  /// **'Developer mode active'**
  String get developerModeActive;

  /// No description provided for @developerModeDisable.
  ///
  /// In en, this message translates to:
  /// **'Disable developer mode'**
  String get developerModeDisable;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pl',
    'pt',
    'ru',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
