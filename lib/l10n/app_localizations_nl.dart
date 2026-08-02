// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Sorteer de kleuren. Maak je hoofd leeg.';

  @override
  String get back => 'Terug';

  @override
  String get cancel => 'Annuleren';

  @override
  String get play => 'SPELEN';

  @override
  String get settings => 'Instellingen';

  @override
  String get home => 'Home';

  @override
  String get levels => 'Levels';

  @override
  String get collection => 'Collectie';

  @override
  String get achievements => 'Prestaties';

  @override
  String get continueLabel => 'Doorgaan';

  @override
  String get pause => 'Pauze';

  @override
  String get close => 'Sluiten';

  @override
  String get free => 'Gratis';

  @override
  String get coin => 'Munt';

  @override
  String get coins => 'Munten';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Zetten';

  @override
  String get best => 'Best';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Vergrendeld';

  @override
  String get ad => 'AD';

  @override
  String get watchAd => 'Advertentie bekijken';

  @override
  String get claiming => 'Ophalen...';

  @override
  String get homeTagline => 'Sorteer slim, mix kleuren!';

  @override
  String get progressAndAchievements => 'VOORTGANG & PRESTATIES';

  @override
  String get progressTapHint => 'Tik: statistieken en badges';

  @override
  String get dailyReward => 'Dagelijkse beloning';

  @override
  String get rewardReady => 'Beloning klaar';

  @override
  String get comeTomorrow => 'Kom morgen terug';

  @override
  String get collectionSubtitle => 'Thema\'s bekijken';

  @override
  String get premiumThemes => 'PREMIUM-THEMA\'S';

  @override
  String get premiumThemesBody =>
      'Classic, Galaxy, Ocean, Neon en Golden Age thema\'s worden hier ontgrendeld.';

  @override
  String get playCta => 'SPELEN';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString munten$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString gratis hint';
  }

  @override
  String get levelMapTitle => 'LEVELKAART';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString levels voltooid';
  }

  @override
  String get newExperimentsBanner =>
      'NIEUWE EXPERIMENTEN\nPORTAL • BOM • KLEP • REACTOR';

  @override
  String get settingsTitle => 'INSTELLINGEN';

  @override
  String get settingsSubtitleAudio => 'Geluid en haptiek';

  @override
  String get settingsSubtitleVisual => 'Kleuren, patronen en animaties';

  @override
  String get settingsSubtitleGeneral => 'Moeilijkheid en algemene voorkeuren';

  @override
  String get sectionAudioFeedback => 'GELUID & FEEDBACK';

  @override
  String get soundEffects => 'Geluidseffecten';

  @override
  String get soundEffectsSubtitle => 'Selectie-, giet- en succesgeluiden';

  @override
  String get backgroundMusic => 'Achtergrondmuziek';

  @override
  String get backgroundMusicSubtitle => 'Rustige kosmische ambientmuziek';

  @override
  String get haptics => 'Haptiek';

  @override
  String get hapticsSubtitle => 'Lichte feedback bij tikken';

  @override
  String get sectionVisual => 'VISUELE VOORKEUREN';

  @override
  String get neonPalette => 'Neon vloeistofpalet';

  @override
  String get neonPaletteSubtitle => 'Levendige neonkleuren in het spel';

  @override
  String get colorAccessibility => 'Kleuren toegankelijkheid';

  @override
  String get colorAccessibilitySubtitle =>
      'Voegt subtiele patronen toe aan vloeistoffen';

  @override
  String get reducedAnimations => 'Minder animaties';

  @override
  String get reducedAnimationsSubtitle => 'Versnelt gietbewegingen';

  @override
  String get sectionDifficulty => 'MOEILIJKHEID & TIJDSDRUK';

  @override
  String get offlineProgress => 'Offline voortgang';

  @override
  String get offlineProgressBody =>
      'Je levels en instellingen worden veilig op dit apparaat opgeslagen.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visueel';

  @override
  String get tabGeneral => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get languageSubtitle => 'Kies app-taal';

  @override
  String get languageSystem => 'Systeemstandaard';

  @override
  String get languageSystemSubtitle => 'Taal van telefoon of tablet gebruiken';

  @override
  String get difficultyEasy => 'Makkelijk';

  @override
  String get difficultyNormal => 'Normaal';

  @override
  String get difficultyHard => 'Moeilijk';

  @override
  String get difficultyEasyDesc =>
      'Geen tijdsdruk • minder munten • meer interstitials';

  @override
  String get difficultyNormalDesc => 'Gematigde timer, lichte druk';

  @override
  String get difficultyHardDesc => 'Zeer korte timer, -5 s bij fouten';

  @override
  String get dailyRewardTitle => 'DAGELIJKSE BELONING';

  @override
  String get dailyRewardClaimBody =>
      'Claim het cadeau van vandaag. Kom dagelijks terug voor een grotere beloning.';

  @override
  String get dailyRewardClaimedBody => 'Vandaag al geclaimd. Kom morgen terug.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Reeks: $streakString dagen';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'D$dayString';
  }

  @override
  String get plusHint => '+hint';

  @override
  String get claimDailyReward => 'Claim beloning van vandaag';

  @override
  String get comeAgainTomorrow => 'Kom morgen terug';

  @override
  String get achievementsTitle => 'PRESTATIES';

  @override
  String get achGreetingEmpty =>
      'Je bent klaar. Voltooi je eerste level en badges stapelen zich hier op.';

  @override
  String get achGreetingFlow =>
      'Je flow brandt — je hebt het ritme van het spel te pakken.';

  @override
  String get achGreetingStars =>
      'Je sterrencollectie straalt. Ga zo door, legende.';

  @override
  String get achGreetingVeteran => 'Goed tempo. Het lab volgt jouw tempo.';

  @override
  String get achGreetingProgress =>
      'Stevige voortgang. Elk schoon level maakt je scherper.';

  @override
  String get achGreetingStarter =>
      'Sterke start. Nog een paar levels en badges komen eraan.';

  @override
  String get statLevel => 'Level';

  @override
  String get statStars => 'Sterren';

  @override
  String get statCoins => 'Munten';

  @override
  String get statFlow => 'Flow';

  @override
  String get statUnlocked => 'Ontgrendeld';

  @override
  String get achievementLocked => 'Vergrendeld';

  @override
  String get achievementPerfectSort => 'Perfecte sort';

  @override
  String get achievementPerfectSortDesc => 'Voltooi binnen Par zonder hulp';

  @override
  String get achievementUnderPar => 'Onder Par';

  @override
  String get achievementUnderParDesc =>
      'Overschrijd het doel aantal zetten niet';

  @override
  String get achievementNoUndo => 'Zonder undo';

  @override
  String get achievementNoUndoDesc => 'Voltooi zonder undo';

  @override
  String get achievementNoHint => 'Zonder hints';

  @override
  String get achievementNoHintDesc => 'Oplossen zonder hints';

  @override
  String get achievementFlowMaster => 'Flow-meester';

  @override
  String get achievementFlowMasterDesc => 'Bereik Flow x5 in een level';

  @override
  String get achievementNewRecord => 'Nieuw record';

  @override
  String get achievementNewRecordDesc => 'Verbeter je beste zettentelling';

  @override
  String get achievementFirstTry => 'Eerste poging';

  @override
  String get achievementFirstTryDesc => 'Voltooi zonder herstart';

  @override
  String get achievementNoExtraTube => 'Geen extra buis';

  @override
  String get achievementNoExtraTubeDesc => 'Voltooi zonder extra buis';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'Herstart';

  @override
  String get hint => 'Hint';

  @override
  String get addTube => 'Buis toevoegen';

  @override
  String get perfect => 'PERFECT!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString voltooid';
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

    return '$movesString zetten  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NIEUW RECORD • PRESTATIES';

  @override
  String get achievementsHeader => 'PRESTATIES';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Hint-straf: -$amountString munten';
  }

  @override
  String get doubleReward => 'DUBBELE BELONING';

  @override
  String get goToLevels => 'LEVELS';

  @override
  String get continueNext => 'DOORGAAN';

  @override
  String get backToLevelSelect => 'Terug naar levelkeuze';

  @override
  String get bestLabel => 'Best';

  @override
  String get flowCombo => 'Flow-combo';

  @override
  String get extraTube => 'Extra buis';

  @override
  String get fullReward => 'Volledige beloning';

  @override
  String get halfReward => 'Halve beloning';

  @override
  String get quarterReward => 'Kwart beloning';

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
  String get newRule => 'NIEUWE REGEL';

  @override
  String get gotItStart => 'BEGREPEN, START';

  @override
  String get firstTimeTipOnly => 'Alleen de eerste keer getoond';

  @override
  String get mechanicBasicsTitle => 'SPELUITLEG';

  @override
  String get mechanicBasicsHeadline => 'Kies buizen, giet vloeistof';

  @override
  String get mechanicBasicsBody =>
      'Tik een buis om de bovenste kleur te kiezen. Tik daarna een doelbuis — gelijke kleuren stapelen of giet in een lege buis.';

  @override
  String get mechanicBasicsTip =>
      'Doel: elke volle buis wordt één kleur. Lege buizen zijn helpers.';

  @override
  String get mechanicBasicsCaption => 'Kies → Giet → Sorteer';

  @override
  String get mechanicHiddenTitle => 'VERBORGEN BUIs';

  @override
  String get mechanicHiddenHeadline => 'Alleen bovenste kleur zichtbaar';

  @override
  String get mechanicHiddenBody =>
      'In deze buis zie je alleen de bovenste kleur. Lagen eronder blijven wazig tot boven leeg is.';

  @override
  String get mechanicHiddenTip =>
      'Giet niet blind — leeg boven eerst, onthul onder, beslis dan.';

  @override
  String get mechanicHiddenCaption => 'Boven helder • onder wazig';

  @override
  String get mechanicMixTitle => 'KLEURMIX';

  @override
  String get mechanicMixHeadline => 'Twee kleuren worden een nieuwe';

  @override
  String get mechanicMixBody =>
      'Giet bepaalde kleuren op elkaar voor een nieuwe mix. Volg de vergelijkingen bovenaan.';

  @override
  String get mechanicMixTip =>
      'Hoeveelheden moeten kloppen en doel moet ruimte hebben.';

  @override
  String get mechanicMixCaption => 'Rood + Geel = Oranje';

  @override
  String get mechanicFrozenTitle => 'BEVROREN BUIs';

  @override
  String get mechanicFrozenHeadline => 'Even niet te gebruiken';

  @override
  String get mechanicFrozenBody =>
      'Je kunt niet in of uit een bevroren buis gieten. Na genoeg zetten smelt het ijs.';

  @override
  String get mechanicFrozenTip =>
      'Maak ruimte met andere buizen; gebruik zodra ijs weg is.';

  @override
  String get mechanicFrozenCaption => 'Wacht zetten → ijs smelt';

  @override
  String get mechanicLockedTitle => 'VERGRENDELDE BUIs';

  @override
  String get mechanicLockedHeadline => 'Voltooi eerst een andere buis';

  @override
  String get mechanicLockedBody =>
      'Een vergrendelde buis blijft dicht tot je een aantal buizen voltooit.';

  @override
  String get mechanicLockedTip =>
      'Doe eerst makkelijke buizen, gebruik daarna de vergrendelde ruimte.';

  @override
  String get mechanicLockedCaption => 'Voltooi → ontgrendel';

  @override
  String get mechanicHeatedTitle => 'VERWARMBUIs';

  @override
  String get mechanicHeatedHeadline => 'Verdampt restvloeistof';

  @override
  String get mechanicHeatedBody =>
      'Vloeistof in de verwarmers verdwijnt. Hitte-ladingen zijn beperkt — meest voor restkleuren.';

  @override
  String get mechanicHeatedTip =>
      'Zonder hitte kun je niet gieten. Ruim rest vroeg op.';

  @override
  String get mechanicHeatedCaption => 'Rest → damp';

  @override
  String get mechanicValveTitle => 'EENRICHTINGSKLEP';

  @override
  String get mechanicValveHeadline => 'Alleen erin gieten';

  @override
  String get mechanicValveBody =>
      'Je kunt in een klepbuis gieten maar niet eruit halen. Werkt als permanente opslag.';

  @override
  String get mechanicValveTip =>
      'Verkeerde kleur kan vastlopen. Vul kleppen voorzichtig.';

  @override
  String get mechanicValveCaption => 'Alleen in';

  @override
  String get mechanicPortalTitle => 'PORTALPAAR';

  @override
  String get mechanicPortalHeadline => 'Erin via één, eruit via de andere';

  @override
  String get mechanicPortalBody =>
      'Giet in een portal en vloeistof verschijnt in de tweeling. Twee buizen zijn gekoppeld.';

  @override
  String get mechanicPortalTip =>
      'Richt op één portal — vullen gebeurt aan de andere kant.';

  @override
  String get mechanicPortalCaption => 'A in → B uit';

  @override
  String get mechanicBombTitle => 'BOMBUIs';

  @override
  String get mechanicBombHeadline => 'Klaar voor de timer';

  @override
  String get mechanicBombBody =>
      'Gemarkeerde buis heeft aftelling. Vul met één kleur voor nul of faal.';

  @override
  String get mechanicBombTip =>
      'Beveilig bom-buis eerst, sorteer daarna de rest.';

  @override
  String get mechanicBombCaption => 'Vul voor aftelling eindigt';

  @override
  String get mechanicNarrowTitle => 'SMALLE BUIs';

  @override
  String get mechanicNarrowHeadline => 'Buffer capaciteit 2';

  @override
  String get mechanicNarrowBody =>
      'Level heeft korte hulp-buis met max 2 eenheden. Voor krappe manoeuvres.';

  @override
  String get mechanicNarrowTip =>
      'Moet leeg zijn om te voltooien. 2 eenheden telt niet als klaar — leeg opnieuw.';

  @override
  String get mechanicNarrowCaption => 'Capaciteit 2 • leeg voor einde';

  @override
  String get mechanicMovingTitle => 'BEWEGEND LAYOUT';

  @override
  String get mechanicMovingHeadline => 'Buizen wisselen van plek';

  @override
  String get mechanicMovingBody =>
      'Elke paar zetten verschuift het bord en verandert de volgorde. Zelfde buizen — nieuwe posities.';

  @override
  String get mechanicMovingTip => 'Volg buizen via id en kleuren.';

  @override
  String get mechanicMovingCaption => 'Verschuift elke 3 zetten';

  @override
  String get mechanicBossTitle => 'BOSS-EXPERIMENT';

  @override
  String get mechanicBossHeadline => 'Strengere regels';

  @override
  String get mechanicBossBody =>
      'Boss-levels hebben zettenlimiet en kunnen meerdere speciale regels combineren. Speel met plan.';

  @override
  String get mechanicBossTip =>
      'Blijf dicht bij Par; vermijd undo en verspild gieten.';

  @override
  String get mechanicBossCaption => 'Limiet + speciale regels';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString';
  }

  @override
  String get movesLabel => 'Zetten';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Onbeperkt opnieuw  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pauze';

  @override
  String get resumeTooltip => 'Hervatten';

  @override
  String get settingsTooltip => 'Instellingen';

  @override
  String get pausedTitle => 'SPEL GEPAUZEERD';

  @override
  String get pausedBody => 'Timer en aftelgeluiden zijn gepauzeerd.';

  @override
  String get resumeCta => 'HERVATTEN';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'MAKKELIJK  •  RUSTIG';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString ZETTEN';
  }

  @override
  String get hiddenLiquid => 'VERBORGEN VLOEISTOF';

  @override
  String get frozenTube => 'BEVROREN BUIs';

  @override
  String get iceCleared => 'IJS WEG';

  @override
  String get lockedTube => 'VERGRENDELDE BUIs';

  @override
  String get lockOpened => 'SLOT OPEN';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'VERBRAND REST • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'WARMTEBUIs • $remainingString';
  }

  @override
  String get portalPair => 'PORTALPAAR';

  @override
  String get oneWayValve => 'EENRICHTINGSKLEP';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOM • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'VERSCHUIFT ELKE $movesString ZETTEN';
  }

  @override
  String get narrowTubeCap2 => 'SMALLE BUIs • CAP 2';

  @override
  String get hiddenMix => 'VERBORGEN MIX';

  @override
  String get portalFlow => 'PORTAAL-FLOW!';

  @override
  String get tubesShifted => 'BUIZEN VERSCHOVEN!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOM: $remainingString ZETTEN!';
  }

  @override
  String get iceBroken => 'IJs gebroken! Bevroren buis is nu bruikbaar.';

  @override
  String get lockUnlocked => 'Slot open! Nieuwe buis klaar.';

  @override
  String get tubeFrozenMsg =>
      'Deze buis is bevroren. Enkele goede zetten doen het ontdooien.';

  @override
  String get tubeLockedMsg =>
      'Deze buis is vergrendeld. Voltooi eerst een andere kleur.';

  @override
  String get valveOneWayMsg =>
      'Gouden klep is eenrichting: erin gieten kan, eruit niet.';

  @override
  String get heatExhaustedMsg =>
      'Deze verwarmingsbuis heeft geen brandladingen meer.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Niet genoeg munten ($costString).';
  }

  @override
  String get adFailed => 'Advertentie kon niet worden voltooid.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString munten • $title heropend';
  }

  @override
  String reopenAd(String title) {
    return 'Geopend met advertentie • $title';
  }

  @override
  String get tipQuotaEmpty => 'Geen hints meer voor dit level.';

  @override
  String get rewardsNotReady => 'Beloningssysteem is niet klaar.';

  @override
  String get freeHintUsed => 'Gratis hint gebruikt.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Hint: -$costString munten';
  }

  @override
  String get noHintAvailable => 'Geen nuttige hint nu.';

  @override
  String get assistHint => 'hint';

  @override
  String get assistUndo => 'undo';

  @override
  String get freeHintEarned => '1 gratis hint verdiend.';

  @override
  String get freeUndoEarned => '1 gratis undo verdiend.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString tegoed • mislukte poging (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Schuldenlimiet ($floorString). Bekijk advertentie om opnieuw te proberen.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString tegoed • herstart';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Niet genoeg munten ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Bekijk advertentie voor 1 gratis $label.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Schuldenlimiet ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Je zit op de schuldvloer. Bekijk advertentie om opnieuw te proberen.';

  @override
  String get tipUnlockPaidBody =>
      'Je zag deze regel één keer gratis.\nOpnieuw lezen kost munten.';

  @override
  String get tipUnlockAdBody =>
      'Niet genoeg munten.\nBekijk advertentie om deze tip gratis te openen.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Betaal $costString';
  }

  @override
  String get timeUp => 'TIJD OM';

  @override
  String get bombExploded => 'BOM GEëXPLODEERD!';

  @override
  String get moveLimitReached => 'ZETTENLIMIET BEREIKT';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Mislukte poging: -$amountString tegoed (schuld min $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Je kunt tijdsdruk uitzetten in Makkelijk-modus.';

  @override
  String get bombFailHint =>
      'Vul gemarkeerde buis met één kleur voor rode aftelling eindigt.';

  @override
  String get bossFailHint =>
      'Boss-experiment overschreed zettenlimiet. Plan mixes en lege buizen zorgvuldig.';

  @override
  String get debtLimitRetryHint =>
      'Schuldenlimiet — bekijk advertentie om opnieuw te proberen.';

  @override
  String get retryWithAd => 'ADVERTENTIE • OPNIEUW';

  @override
  String get retryAgain => 'OPNIEUW';

  @override
  String get vaporized => 'VERDAMPt!';

  @override
  String colorClearedBonus(String color) {
    return '$color WEG  •  +4 S';
  }

  @override
  String get newColorFormed => 'NIEUWE KLEUR!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'LEGENDARISCHE FLOW!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLOW x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Legendarische Flow';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Flow x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Buis $id, $unitsString eenheden gevuld';
  }

  @override
  String get colorRed => 'Rood';

  @override
  String get colorBlue => 'Blauw';

  @override
  String get colorPurple => 'Paars';

  @override
  String get colorYellow => 'Geel';

  @override
  String get colorGreen => 'Groen';

  @override
  String get colorOrange => 'Oranje';

  @override
  String get colorPink => 'Roze';

  @override
  String get colorCyan => 'Cyaan';

  @override
  String get colorLime => 'Limoen';

  @override
  String get colorBrown => 'Bruin';

  @override
  String get skipLevelOfferBody =>
      'Dit level is lastig. Bekijk een advertentie om de volgende te ontgrendelen.';

  @override
  String get skipLevelCta => 'ADVERTENTIE • Overslaan';

  @override
  String get skipLevelNote =>
      'Je kunt later terugkomen om dit level af te maken.';

  @override
  String get skipLevelUnlocked => 'Volgende level ontgrendeld!';

  @override
  String get developerModeTitle => 'Ontwikkelaarsmodus';

  @override
  String get developerModePasswordHint => 'Wachtwoord';

  @override
  String get developerModeUnlock => 'Ontgrendelen';

  @override
  String get developerModeEnabled => 'Alle levels ontgrendeld voor testen.';

  @override
  String get developerModeWrongPassword => 'Onjuist wachtwoord';

  @override
  String get developerModeActive => 'Ontwikkelaarsmodus actief';

  @override
  String get developerModeDisable => 'Ontwikkelaarsmodus uitschakelen';
}
