// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Sortuj kolory. Oczyść umysł.';

  @override
  String get back => 'Wstecz';

  @override
  String get cancel => 'Anuluj';

  @override
  String get play => 'GRAJ';

  @override
  String get settings => 'Ustawienia';

  @override
  String get home => 'Start';

  @override
  String get levels => 'Poziomy';

  @override
  String get collection => 'Kolekcja';

  @override
  String get achievements => 'Osiągnięcia';

  @override
  String get continueLabel => 'Kontynuuj';

  @override
  String get pause => 'Pauza';

  @override
  String get close => 'Zamknij';

  @override
  String get free => 'Darmowe';

  @override
  String get coin => 'Moneta';

  @override
  String get coins => 'Monety';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Ruchy';

  @override
  String get best => 'Najlepszy';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Zablokowane';

  @override
  String get ad => 'REKLAMA';

  @override
  String get watchAd => 'Obejrzyj reklamę';

  @override
  String get claiming => 'Odbieranie...';

  @override
  String get homeTagline => 'Sortuj mądrze, mieszaj kolory!';

  @override
  String get progressAndAchievements => 'POSTĘP I OSIĄGNIĘCIA';

  @override
  String get progressTapHint => 'Dotknij: statystyki i odznaki';

  @override
  String get dailyReward => 'Nagroda dzienna';

  @override
  String get rewardReady => 'Nagroda gotowa';

  @override
  String get comeTomorrow => 'Wróć jutro';

  @override
  String get collectionSubtitle => 'Przeglądaj motywy';

  @override
  String get premiumThemes => 'MOTYWY PREMIUM';

  @override
  String get premiumThemesBody =>
      'Motywy Classic, Galaxy, Ocean, Neon i Golden Age odblokowują się tutaj.';

  @override
  String get playCta => 'GRAJ';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString monet$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString darmowa podpowiedź';
  }

  @override
  String get levelMapTitle => 'MAPA POZIOMÓW';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString poziomów ukończonych';
  }

  @override
  String get newExperimentsBanner =>
      'NOWE EKSPERYMENTY\nPORTAL • BOMBA • ZAWÓR • REAKTOR';

  @override
  String get settingsTitle => 'USTAWIENIA';

  @override
  String get settingsSubtitleAudio => 'Dźwięk i haptyka';

  @override
  String get settingsSubtitleVisual => 'Kolory, wzory i animacje';

  @override
  String get settingsSubtitleGeneral => 'Trudność i preferencje ogólne';

  @override
  String get sectionAudioFeedback => 'DŹWIĘK I OPINIE';

  @override
  String get soundEffects => 'Efekty dźwiękowe';

  @override
  String get soundEffectsSubtitle => 'Dźwięki wyboru, nalewania i sukcesu';

  @override
  String get backgroundMusic => 'Muzyka w tle';

  @override
  String get backgroundMusicSubtitle => 'Spokojna kosmiczna muzyka ambient';

  @override
  String get haptics => 'Haptyka';

  @override
  String get hapticsSubtitle => 'Lekka reakcja przy dotknięciu';

  @override
  String get sectionVisual => 'PREFERENCJE WIZUALNE';

  @override
  String get neonPalette => 'Neonowa paleta płynu';

  @override
  String get neonPaletteSubtitle => 'Żywe kolory neonu w grze';

  @override
  String get colorAccessibility => 'Dostępność kolorów';

  @override
  String get colorAccessibilitySubtitle => 'Dodaje subtelne wzory do płynów';

  @override
  String get reducedAnimations => 'Ograniczone animacje';

  @override
  String get reducedAnimationsSubtitle => 'Przyspiesza ruchy nalewania';

  @override
  String get sectionDifficulty => 'TRUDNOŚĆ I PRESJA CZASU';

  @override
  String get offlineProgress => 'Postęp offline';

  @override
  String get offlineProgressBody =>
      'Twoje poziomy i ustawienia są bezpiecznie zapisane na tym urządzeniu.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Wizualne';

  @override
  String get tabGeneral => 'Ustawienia';

  @override
  String get language => 'Język';

  @override
  String get languageSubtitle => 'Wybierz język aplikacji';

  @override
  String get languageSystem => 'Domyślny systemu';

  @override
  String get languageSystemSubtitle => 'Język telefonu lub tabletu';

  @override
  String get difficultyEasy => 'Łatwy';

  @override
  String get difficultyNormal => 'Normalny';

  @override
  String get difficultyHard => 'Trudny';

  @override
  String get difficultyEasyDesc =>
      'Bez presji czasu • mniej monet • więcej reklam pełnoekranowych';

  @override
  String get difficultyNormalDesc => 'Umiarkowany timer, lekka presja';

  @override
  String get difficultyHardDesc => 'Bardzo krótki timer, -5 s za błędy';

  @override
  String get dailyRewardTitle => 'NAGRODA DZIENNA';

  @override
  String get dailyRewardClaimBody =>
      'Odbierz dzisiejszy prezent. Wracaj codziennie, by nagroda rosła.';

  @override
  String get dailyRewardClaimedBody => 'Dziś już odebrano. Wróć jutro.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Seria: $streakString dni';
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
  String get plusHint => '+podpowiedź';

  @override
  String get claimDailyReward => 'Odbierz dzisiejszą nagrodę';

  @override
  String get comeAgainTomorrow => 'Wróć jutro';

  @override
  String get achievementsTitle => 'OSIĄGNIĘCIA';

  @override
  String get achGreetingEmpty =>
      'Gotowe. Ukończ pierwszy poziom, a odznaki zaczną się tu zbierać.';

  @override
  String get achGreetingFlow => 'Twój flow płonie — złapałeś rytm gry.';

  @override
  String get achGreetingStars =>
      'Twoja kolekcja gwiazdek lśni. Tak trzymaj, legendo.';

  @override
  String get achGreetingVeteran => 'Dobre tempo. Laboratorium nadąża za tobą.';

  @override
  String get achGreetingProgress =>
      'Solidny postęp. Każdy czysty poziom czyni cię lepszym.';

  @override
  String get achGreetingStarter =>
      'Mocny start. Jeszcze kilka poziomów i odznaki popłyną.';

  @override
  String get statLevel => 'Poziom';

  @override
  String get statStars => 'Gwiazdki';

  @override
  String get statCoins => 'Monety';

  @override
  String get statFlow => 'Flow';

  @override
  String get statUnlocked => 'Odblokowane';

  @override
  String get achievementLocked => 'Zablokowane';

  @override
  String get achievementPerfectSort => 'Idealne sortowanie';

  @override
  String get achievementPerfectSortDesc => 'Ukończ w Par bez pomocy';

  @override
  String get achievementUnderPar => 'Poniżej Par';

  @override
  String get achievementUnderParDesc =>
      'Nie przekraczaj docelowej liczby ruchów';

  @override
  String get achievementNoUndo => 'Bez cofania';

  @override
  String get achievementNoUndoDesc => 'Ukończ bez cofania';

  @override
  String get achievementNoHint => 'Bez podpowiedzi';

  @override
  String get achievementNoHintDesc => 'Rozwiąż bez podpowiedzi';

  @override
  String get achievementFlowMaster => 'Mistrz Flow';

  @override
  String get achievementFlowMasterDesc => 'Osiągnij Flow x5 na poziomie';

  @override
  String get achievementNewRecord => 'Nowy rekord';

  @override
  String get achievementNewRecordDesc => 'Pobij swój najlepszy wynik ruchów';

  @override
  String get achievementFirstTry => 'Za pierwszym razem';

  @override
  String get achievementFirstTryDesc => 'Ukończ bez restartu';

  @override
  String get achievementNoExtraTube => 'Bez dodatkowej probówki';

  @override
  String get achievementNoExtraTubeDesc => 'Ukończ bez dodawania probówki';

  @override
  String get undo => 'Cofnij';

  @override
  String get restart => 'Restart';

  @override
  String get hint => 'Podpowiedź';

  @override
  String get addTube => 'Dodaj probówkę';

  @override
  String get perfect => 'IDEALNIE!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Poziom $levelString ukończony';
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

    return '$movesString ruchów  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NOWY REKORD • OSIĄGNIĘCIA';

  @override
  String get achievementsHeader => 'OSIĄGNIĘCIA';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Kara za podpowiedź: -$amountString monet';
  }

  @override
  String get doubleReward => 'PODWÓJNA NAGRODA';

  @override
  String get goToLevels => 'POZIOMY';

  @override
  String get continueNext => 'KONTYNUUJ';

  @override
  String get backToLevelSelect => 'Wróć do wyboru poziomów';

  @override
  String get bestLabel => 'Najlepszy';

  @override
  String get flowCombo => 'Combo Flow';

  @override
  String get extraTube => 'Dodatkowa probówka';

  @override
  String get fullReward => 'Pełna nagroda';

  @override
  String get halfReward => 'Połowa nagrody';

  @override
  String get quarterReward => 'Ćwierć nagrody';

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
  String get newRule => 'NOWA ZASADA';

  @override
  String get gotItStart => 'ROZUMIEM, START';

  @override
  String get firstTimeTipOnly => 'Pokazane tylko za pierwszym razem';

  @override
  String get mechanicBasicsTitle => 'JAK GRAĆ';

  @override
  String get mechanicBasicsHeadline => 'Wybierz probówki, wlej płyn';

  @override
  String get mechanicBasicsBody =>
      'Dotknij probówki, by wybrać górny kolor. Potem dotknij celu — pasujące kolory układają się lub wlewaj do pustej probówki.';

  @override
  String get mechanicBasicsTip =>
      'Cel: każda pełna probówka ma jeden kolor. Puste probówki to pomocnicy.';

  @override
  String get mechanicBasicsCaption => 'Wybierz → Wlej → Sortuj';

  @override
  String get mechanicHiddenTitle => 'UKRYTA PROBÓWKA';

  @override
  String get mechanicHiddenHeadline => 'Widać tylko górny kolor';

  @override
  String get mechanicHiddenBody =>
      'W tej probówce widać tylko górę. Dolne warstwy są zamglone, dopóki góra nie jest pusta.';

  @override
  String get mechanicHiddenTip =>
      'Nie wlewaj na ślepo — opróżnij górę, odsłoń dół, potem decyduj.';

  @override
  String get mechanicHiddenCaption => 'Góra jasna • dół zamglony';

  @override
  String get mechanicMixTitle => 'MIESZANIE KOLORÓW';

  @override
  String get mechanicMixHeadline => 'Dwa kolory tworzą nowy';

  @override
  String get mechanicMixBody =>
      'Wlewaj określone kolory na siebie, by zmieszać nowy. Podążaj za równaniami u góry.';

  @override
  String get mechanicMixTip =>
      'Ilości muszą się zgadzać, a cel potrzebuje wolnego miejsca.';

  @override
  String get mechanicMixCaption => 'Czerwony + Żółty = Pomarańcz';

  @override
  String get mechanicFrozenTitle => 'ZAMROŻONA PROBÓWKA';

  @override
  String get mechanicFrozenHeadline => 'Na chwilę nietknięta';

  @override
  String get mechanicFrozenBody =>
      'Nie możesz wlewać do ani z zamrożonej probówki. Po wystarczającej liczbie ruchów lód topnieje.';

  @override
  String get mechanicFrozenTip =>
      'Otwórz drogę innymi probówkami; użyj od razu po rozmrożeniu.';

  @override
  String get mechanicFrozenCaption => 'Czekaj ruchy → lód topnieje';

  @override
  String get mechanicLockedTitle => 'ZABLOKOWANA PROBÓWKA';

  @override
  String get mechanicLockedHeadline => 'Najpierw ukończ inną';

  @override
  String get mechanicLockedBody =>
      'Zablokowana probówka pozostaje zamknięta, dopóki nie ukończysz określonej liczby probówek.';

  @override
  String get mechanicLockedTip =>
      'Najpierw łatwe probówki, potem użyj zablokowanej przestrzeni.';

  @override
  String get mechanicLockedCaption => 'Ukończ → odblokuj';

  @override
  String get mechanicHeatedTitle => 'GRZEJNA PROBÓWKA';

  @override
  String get mechanicHeatedHeadline => 'Paruj nadmiar płynu';

  @override
  String get mechanicHeatedBody =>
      'Płyn wlety do grzejnika znika. Ładunki ciepła są ograniczone — zwykle dla zbędnych kolorów.';

  @override
  String get mechanicHeatedTip =>
      'Bez ciepła nie wlejesz. Usuń nadmiar wcześnie.';

  @override
  String get mechanicHeatedCaption => 'Nadmiar → para';

  @override
  String get mechanicValveTitle => 'ZAWÓR JEDNOKIERUNKOWY';

  @override
  String get mechanicValveHeadline => 'Tylko wlewanie';

  @override
  String get mechanicValveBody =>
      'Możesz wlewać do zaworu, ale nie wyjmować. Działa jak stały magazyn.';

  @override
  String get mechanicValveTip =>
      'Zły kolor może uwięzić. Napełniaj zawory ostrożnie.';

  @override
  String get mechanicValveCaption => 'Tylko wejście';

  @override
  String get mechanicPortalTitle => 'PARA PORTALI';

  @override
  String get mechanicPortalHeadline => 'Wejdź jednym, wyjdź drugim';

  @override
  String get mechanicPortalBody =>
      'Wlej do portalu, a płyn pojawi się w bliźniaku. Dwie probówki są połączone.';

  @override
  String get mechanicPortalTip =>
      'Celuj w jeden portal — napełnianie dzieje się po drugiej stronie.';

  @override
  String get mechanicPortalCaption => 'A in → B out';

  @override
  String get mechanicBombTitle => 'PROBÓWKA-BOMBA';

  @override
  String get mechanicBombHeadline => 'Ukończ przed timerem';

  @override
  String get mechanicBombBody =>
      'Oznaczona probówka ma odliczanie. Wypełnij jednym kolorem przed zerem, inaczej porażka.';

  @override
  String get mechanicBombTip =>
      'Najpierw zabezpiecz bombę, potem sortuj resztę.';

  @override
  String get mechanicBombCaption => 'Wypełnij przed końcem odliczania';

  @override
  String get mechanicNarrowTitle => 'WĄSKA PROBÓWKA';

  @override
  String get mechanicNarrowHeadline => 'Bufor pojemności 2';

  @override
  String get mechanicNarrowBody =>
      'Poziom ma krótką probówkę pomocniczą na max 2 jednostki. Do ciasnych manewrów.';

  @override
  String get mechanicNarrowTip =>
      'Musi być pusta do ukończenia. 2 jednostki to nie koniec — opróżnij ponownie.';

  @override
  String get mechanicNarrowCaption => 'Pojemność 2 • pusto na finisz';

  @override
  String get mechanicMovingTitle => 'RUCHOMY UKŁAD';

  @override
  String get mechanicMovingHeadline => 'Probówki zamieniają miejsca';

  @override
  String get mechanicMovingBody =>
      'Co kilka ruchów plansza się przesuwa i zmienia kolejność probówek. Te same probówki — nowe pozycje.';

  @override
  String get mechanicMovingTip => 'Śledź probówki po id i kolorach.';

  @override
  String get mechanicMovingCaption => 'Zmiana co 3 ruchy';

  @override
  String get mechanicBossTitle => 'EKSPERYMENT BOSS';

  @override
  String get mechanicBossHeadline => 'Twardsze zasady';

  @override
  String get mechanicBossBody =>
      'Poziomy Boss mają limit ruchów i mogą łączyć kilka specjalnych zasad. Graj z planem.';

  @override
  String get mechanicBossTip =>
      'Trzymaj się blisko Par; unikaj cofania i marnowania wlewania.';

  @override
  String get mechanicBossCaption => 'Limit + zasady specjalne';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Poziom $levelString';
  }

  @override
  String get movesLabel => 'Ruchy';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Nieograniczone próby  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pauza';

  @override
  String get resumeTooltip => 'Wznów';

  @override
  String get settingsTooltip => 'Ustawienia';

  @override
  String get pausedTitle => 'GRA WSTRZYMANA';

  @override
  String get pausedBody => 'Timer i dźwięki odliczania są wstrzymane.';

  @override
  String get resumeCta => 'WZNÓW';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'ŁATWY  •  RELaks';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString RUCHÓW';
  }

  @override
  String get hiddenLiquid => 'UKRYTY PŁYN';

  @override
  String get frozenTube => 'ZAMROŻONA PROBÓWKA';

  @override
  String get iceCleared => 'LÓD USUNIĘTY';

  @override
  String get lockedTube => 'ZABLOKOWANA PROBÓWKA';

  @override
  String get lockOpened => 'ZAMEK OTWARTY';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'SPAL NADMIAR • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'PROBÓWKA CIEPŁA • $remainingString';
  }

  @override
  String get portalPair => 'PARA PORTALI';

  @override
  String get oneWayValve => 'ZAWÓR JEDNOKIERUNKOWY';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'ZMIANA CO $movesString RUCHÓW';
  }

  @override
  String get narrowTubeCap2 => 'WĄSKA PROBÓWKA • POJ. 2';

  @override
  String get hiddenMix => 'UKRYTA MIESZANKA';

  @override
  String get portalFlow => 'FLOW PORTALU!';

  @override
  String get tubesShifted => 'PROBÓWKI SIĘ PRZESUNĘŁY!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA: $remainingString RUCHÓW!';
  }

  @override
  String get iceBroken => 'Lód pękł! Zamrożona probówka jest gotowa.';

  @override
  String get lockUnlocked => 'Zamek otwarty! Nowa probówka gotowa.';

  @override
  String get tubeFrozenMsg =>
      'Ta probówka jest zamrożona. Kilka poprawnych ruchów ją rozmrozi.';

  @override
  String get tubeLockedMsg =>
      'Ta probówka jest zablokowana. Ukończ najpierw inny kolor.';

  @override
  String get valveOneWayMsg =>
      'Złoty zawór jest jednokierunkowy: wlewasz, ale nie wyciągasz.';

  @override
  String get heatExhaustedMsg => 'Ten grzejnik nie ma już ładunków spalania.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Za mało monet ($costString).';
  }

  @override
  String get adFailed => 'Nie udało się dokończyć reklamy.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString monet • $title ponownie otwarte';
  }

  @override
  String reopenAd(String title) {
    return 'Otwarte reklamą • $title';
  }

  @override
  String get tipQuotaEmpty => 'Brak podpowiedzi na tym poziomie.';

  @override
  String get rewardsNotReady => 'System nagród nie jest gotowy.';

  @override
  String get freeHintUsed => 'Użyto darmowej podpowiedzi.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Podpowiedź: -$costString monet';
  }

  @override
  String get noHintAvailable => 'Brak przydatnej podpowiedzi.';

  @override
  String get assistHint => 'podpowiedź';

  @override
  String get assistUndo => 'cofnij';

  @override
  String get freeHintEarned => 'Zdobyto 1 darmową podpowiedź.';

  @override
  String get freeUndoEarned => 'Zdobyto 1 darmowe cofnięcie.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString kredyt • nieudana próba (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limit długu ($floorString). Obejrzyj reklamę, by spróbować.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString kredyt • restart';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Za mało monet ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Obejrzyj reklamę, by zdobyć 1 darmową $label.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limit długu ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Jesteś na dnie długu. Obejrzyj reklamę, by spróbować ponownie.';

  @override
  String get tipUnlockPaidBody =>
      'Widziałeś tę zasadę raz za darmo.\nPonowne czytanie kosztuje monety.';

  @override
  String get tipUnlockAdBody =>
      'Za mało monet.\nObejrzyj reklamę, by otworzyć tę wskazówkę za darmo.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Zapłać $costString';
  }

  @override
  String get timeUp => 'CZAS MINĄŁ';

  @override
  String get bombExploded => 'BOMBA WYBUCHŁA!';

  @override
  String get moveLimitReached => 'LIMIT RUCHÓW OSIĄGNIĘTY';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Porażka: -$amountString kredyt (dług min $floorString).';
  }

  @override
  String get tryEasyModeHint => 'Możesz wyłączyć presję czasu w trybie Łatwy.';

  @override
  String get bombFailHint =>
      'Wypełnij oznaczoną probówkę jednym kolorem przed końcem czerwonego odliczania.';

  @override
  String get bossFailHint =>
      'Eksperyment Boss przekroczył limit ruchów. Planuj mieszanki i puste probówki.';

  @override
  String get debtLimitRetryHint =>
      'Limit długu — obejrzyj reklamę, by spróbować.';

  @override
  String get retryWithAd => 'REKLAMA • PONÓW';

  @override
  String get retryAgain => 'SPRÓBUJ PONOWNIE';

  @override
  String get vaporized => 'WYPAROWANE!';

  @override
  String colorClearedBonus(String color) {
    return '$color USUNIĘTY  •  +4 S';
  }

  @override
  String get newColorFormed => 'NOWY KOLOR!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'LEGENDARNY FLOW!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLOW x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Legendarny Flow';

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

    return 'Probówka $id, $unitsString jednostek';
  }

  @override
  String get colorRed => 'Czerwony';

  @override
  String get colorBlue => 'Niebieski';

  @override
  String get colorPurple => 'Fioletowy';

  @override
  String get colorYellow => 'Żółty';

  @override
  String get colorGreen => 'Zielony';

  @override
  String get colorOrange => 'Pomarańczowy';

  @override
  String get colorPink => 'Różowy';

  @override
  String get colorCyan => 'Cyjan';

  @override
  String get colorLime => 'Limonka';

  @override
  String get colorBrown => 'Brązowy';

  @override
  String get skipLevelOfferBody =>
      'Ten poziom jest trudny. Obejrzyj reklamę, by odblokować następny.';

  @override
  String get skipLevelCta => 'REKLAMA • POMIŃ';

  @override
  String get skipLevelNote => 'Możesz wrócić i dokończyć ten poziom później.';

  @override
  String get skipLevelUnlocked => 'Następny poziom odblokowany!';

  @override
  String get developerModeTitle => 'Tryb deweloperski';

  @override
  String get developerModePasswordHint => 'Hasło';

  @override
  String get developerModeUnlock => 'Odblokuj';

  @override
  String get developerModeEnabled => 'Wszystkie poziomy odblokowane do testów.';

  @override
  String get developerModeWrongPassword => 'Błędne hasło';

  @override
  String get developerModeActive => 'Tryb deweloperski aktywny';

  @override
  String get developerModeDisable => 'Wyłącz tryb deweloperski';
}
