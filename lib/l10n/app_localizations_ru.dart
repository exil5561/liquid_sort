// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Сортируй цвета. Освободи разум.';

  @override
  String get back => 'Назад';

  @override
  String get cancel => 'Отмена';

  @override
  String get play => 'ИГРАТЬ';

  @override
  String get settings => 'Настройки';

  @override
  String get home => 'Главная';

  @override
  String get levels => 'Уровни';

  @override
  String get collection => 'Коллекция';

  @override
  String get achievements => 'Достижения';

  @override
  String get continueLabel => 'Продолжить';

  @override
  String get pause => 'Пауза';

  @override
  String get close => 'Закрыть';

  @override
  String get free => 'Бесплатно';

  @override
  String get coin => 'Монета';

  @override
  String get coins => 'Монеты';

  @override
  String get secondsShort => 'с';

  @override
  String get moves => 'Ходы';

  @override
  String get best => 'Лучший';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Заблокировано';

  @override
  String get ad => 'РЕКЛАМА';

  @override
  String get watchAd => 'Смотреть рекламу';

  @override
  String get claiming => 'Получение...';

  @override
  String get homeTagline => 'Сортируй умно, смешивай цвета!';

  @override
  String get progressAndAchievements => 'ПРОГРЕСС И ДОСТИЖЕНИЯ';

  @override
  String get progressTapHint => 'Нажми: статистика и значки';

  @override
  String get dailyReward => 'Ежедневная награда';

  @override
  String get rewardReady => 'Награда готова';

  @override
  String get comeTomorrow => 'Приходи завтра';

  @override
  String get collectionSubtitle => 'Просмотр тем';

  @override
  String get premiumThemes => 'ПРЕМИУМ-ТЕМЫ';

  @override
  String get premiumThemesBody =>
      'Темы Классика, Галактика, Океан, Неон и Золотой век открываются здесь.';

  @override
  String get playCta => 'ИГРАТЬ';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString монет$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString бесплатная подсказка';
  }

  @override
  String get levelMapTitle => 'КАРТА УРОВНЕЙ';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString уровней пройдено';
  }

  @override
  String get newExperimentsBanner =>
      'НОВЫЕ ЭКСПЕРИМЕНТЫ\nПОРТАЛ • БОМБА • КЛАПАН • РЕАКТОР';

  @override
  String get settingsTitle => 'НАСТРОЙКИ';

  @override
  String get settingsSubtitleAudio => 'Звук и вибрация';

  @override
  String get settingsSubtitleVisual => 'Цвета, узоры и анимации';

  @override
  String get settingsSubtitleGeneral => 'Сложность и общие настройки';

  @override
  String get sectionAudioFeedback => 'ЗВУК И ОБРАТНАЯ СВЯЗЬ';

  @override
  String get soundEffects => 'Звуковые эффекты';

  @override
  String get soundEffectsSubtitle => 'Звуки выбора, наливания и успеха';

  @override
  String get backgroundMusic => 'Фоновая музыка';

  @override
  String get backgroundMusicSubtitle => 'Спокойная космическая атмосфера';

  @override
  String get haptics => 'Вибрация';

  @override
  String get hapticsSubtitle => 'Лёгкая отдача при касании';

  @override
  String get sectionVisual => 'ВИЗУАЛЬНЫЕ НАСТРОЙКИ';

  @override
  String get neonPalette => 'Неоновая палитра жидкости';

  @override
  String get neonPaletteSubtitle => 'Яркие неоновые цвета в игре';

  @override
  String get colorAccessibility => 'Доступность цветов';

  @override
  String get colorAccessibilitySubtitle => 'Добавляет тонкие узоры к жидкостям';

  @override
  String get reducedAnimations => 'Уменьшенные анимации';

  @override
  String get reducedAnimationsSubtitle => 'Ускоряет движения наливания';

  @override
  String get sectionDifficulty => 'СЛОЖНОСТЬ И ВРЕМЕННОЕ ДАВЛЕНИЕ';

  @override
  String get offlineProgress => 'Офлайн-прогресс';

  @override
  String get offlineProgressBody =>
      'Уровни и настройки надёжно сохраняются на этом устройстве.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Аудио';

  @override
  String get tabVisual => 'Визуал';

  @override
  String get tabGeneral => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get languageSubtitle => 'Выбери язык приложения';

  @override
  String get languageSystem => 'Системный';

  @override
  String get languageSystemSubtitle => 'Язык телефона или планшета';

  @override
  String get difficultyEasy => 'Лёгкий';

  @override
  String get difficultyNormal => 'Нормальный';

  @override
  String get difficultyHard => 'Сложный';

  @override
  String get difficultyEasyDesc =>
      'Без давления времени • меньше монет • больше межстраничной рекламы';

  @override
  String get difficultyNormalDesc => 'Умеренный таймер, лёгкое давление';

  @override
  String get difficultyHardDesc => 'Очень короткий таймер, -5 с за ошибки';

  @override
  String get dailyRewardTitle => 'ЕЖЕДНЕВНАЯ НАГРАДА';

  @override
  String get dailyRewardClaimBody =>
      'Забери подарок сегодня. Приходи каждый день — награда растёт.';

  @override
  String get dailyRewardClaimedBody => 'Сегодня уже забрал. Приходи завтра.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Серия: $streakString дн.';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'Д$dayString';
  }

  @override
  String get plusHint => '+подсказка';

  @override
  String get claimDailyReward => 'Забрать награду сегодня';

  @override
  String get comeAgainTomorrow => 'Приходи завтра';

  @override
  String get achievementsTitle => 'ДОСТИЖЕНИЯ';

  @override
  String get achGreetingEmpty =>
      'Всё готово. Пройди первый уровень — значки начнут копиться здесь.';

  @override
  String get achGreetingFlow => 'Твой поток огонь — ты поймал ритм игры.';

  @override
  String get achGreetingStars => 'Коллекция звёзд сияет. Так держать, легенда.';

  @override
  String get achGreetingVeteran =>
      'Хороший темп. Лаборатория подстраивается под тебя.';

  @override
  String get achGreetingProgress =>
      'Отличный прогресс. Каждый чистый уровень делает тебя острее.';

  @override
  String get achGreetingStarter =>
      'Сильный старт. Ещё несколько уровней — и пойдут значки.';

  @override
  String get statLevel => 'Уровень';

  @override
  String get statStars => 'Звёзды';

  @override
  String get statCoins => 'Монеты';

  @override
  String get statFlow => 'Поток';

  @override
  String get statUnlocked => 'Открыто';

  @override
  String get achievementLocked => 'Заблокировано';

  @override
  String get achievementPerfectSort => 'Идеальная сортировка';

  @override
  String get achievementPerfectSortDesc => 'Пройди в пределах Par без помощи';

  @override
  String get achievementUnderPar => 'Ниже Par';

  @override
  String get achievementUnderParDesc => 'Не превышай целевое число ходов';

  @override
  String get achievementNoUndo => 'Без отмены';

  @override
  String get achievementNoUndoDesc => 'Пройди без отмены хода';

  @override
  String get achievementNoHint => 'Без подсказок';

  @override
  String get achievementNoHintDesc => 'Реши без подсказок';

  @override
  String get achievementFlowMaster => 'Мастер потока';

  @override
  String get achievementFlowMasterDesc => 'Достигни Поток x5 на уровне';

  @override
  String get achievementNewRecord => 'Новый рекорд';

  @override
  String get achievementNewRecordDesc => 'Побей свой лучший счёт ходов';

  @override
  String get achievementFirstTry => 'С первой попытки';

  @override
  String get achievementFirstTryDesc => 'Пройди без перезапуска';

  @override
  String get achievementNoExtraTube => 'Без лишней пробирки';

  @override
  String get achievementNoExtraTubeDesc => 'Пройди без добавления пробирки';

  @override
  String get undo => 'Отмена';

  @override
  String get restart => 'Заново';

  @override
  String get hint => 'Подсказка';

  @override
  String get addTube => 'Добавить пробирку';

  @override
  String get perfect => 'ИДЕАЛЬНО!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Уровень $levelString пройден';
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

    return '$movesString ходов  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'НОВЫЙ РЕКОРД • ДОСТИЖЕНИЯ';

  @override
  String get achievementsHeader => 'ДОСТИЖЕНИЯ';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Штраф за подсказку: -$amountString монет';
  }

  @override
  String get doubleReward => 'ДВОЙНАЯ НАГРАДА';

  @override
  String get goToLevels => 'УРОВНИ';

  @override
  String get continueNext => 'ПРОДОЛЖИТЬ';

  @override
  String get backToLevelSelect => 'К выбору уровней';

  @override
  String get bestLabel => 'Лучший';

  @override
  String get flowCombo => 'Комбо потока';

  @override
  String get extraTube => 'Доп. пробирка';

  @override
  String get fullReward => 'Полная награда';

  @override
  String get halfReward => 'Половина награды';

  @override
  String get quarterReward => 'Четверть награды';

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
  String get newRule => 'НОВОЕ ПРАВИЛО';

  @override
  String get gotItStart => 'ПОНЯТНО, НАЧАТЬ';

  @override
  String get firstTimeTipOnly => 'Показывается только в первый раз';

  @override
  String get mechanicBasicsTitle => 'КАК ИГРАТЬ';

  @override
  String get mechanicBasicsHeadline => 'Выбирай пробирки, наливай жидкость';

  @override
  String get mechanicBasicsBody =>
      'Нажми пробирку, чтобы выбрать верхний цвет. Затем нажми целевую — одинаковые цвета складываются или лей в пустую пробирку.';

  @override
  String get mechanicBasicsTip =>
      'Цель: каждая заполненная пробирка — один цвет. Пустые пробирки — помощники.';

  @override
  String get mechanicBasicsCaption => 'Выбор → Налив → Сортировка';

  @override
  String get mechanicHiddenTitle => 'СКРЫТАЯ ПРОБИРКА';

  @override
  String get mechanicHiddenHeadline => 'Виден только верхний цвет';

  @override
  String get mechanicHiddenBody =>
      'В этой пробирке виден лишь верхний цвет. Нижние слои скрыты, пока верх не опустеет.';

  @override
  String get mechanicHiddenTip =>
      'Не лей вслепую — сначала очисти верх, открой низ, потом решай.';

  @override
  String get mechanicHiddenCaption => 'Верх виден • низ скрыт';

  @override
  String get mechanicMixTitle => 'СМЕШИВАНИЕ ЦВЕТОВ';

  @override
  String get mechanicMixHeadline => 'Два цвета дают новый';

  @override
  String get mechanicMixBody =>
      'Наливай определённые цвета друг на друга для смешения. Следуй уравнениям сверху.';

  @override
  String get mechanicMixTip =>
      'Количества должны совпадать, а цель — иметь свободное место.';

  @override
  String get mechanicMixCaption => 'Красный + Жёлтый = Оранжевый';

  @override
  String get mechanicFrozenTitle => 'ЗАМОРОЖЕННАЯ ПРОБИРКА';

  @override
  String get mechanicFrozenHeadline => 'Некоторое время недоступна';

  @override
  String get mechanicFrozenBody =>
      'Нельзя наливать в или из замороженной пробирки. После достаточного числа ходов лёд тает.';

  @override
  String get mechanicFrozenTip =>
      'Открой путь другими пробирками; используй сразу после таяния.';

  @override
  String get mechanicFrozenCaption => 'Жди ходы → лёд тает';

  @override
  String get mechanicLockedTitle => 'ЗАБЛОКИРОВАННАЯ ПРОБИРКА';

  @override
  String get mechanicLockedHeadline => 'Сначала заверши другую';

  @override
  String get mechanicLockedBody =>
      'Заблокированная пробирка закрыта, пока не завершишь нужное число пробирок.';

  @override
  String get mechanicLockedTip =>
      'Сначала лёгкие пробирки, потом используй заблокированное место.';

  @override
  String get mechanicLockedCaption => 'Заверши → открой';

  @override
  String get mechanicHeatedTitle => 'НАГРЕВАТЕЛЬНАЯ ПРОБИРКА';

  @override
  String get mechanicHeatedHeadline => 'Испаряй лишнюю жидкость';

  @override
  String get mechanicHeatedBody =>
      'Жидкость в нагревателе исчезает. Заряды тепла ограничены — обычно для лишних цветов.';

  @override
  String get mechanicHeatedTip =>
      'Без тепла туда не налить. Убирай лишнее рано.';

  @override
  String get mechanicHeatedCaption => 'Лишнее → пар';

  @override
  String get mechanicValveTitle => 'ОДНОНАПРАВЛЕННЫЙ КЛАПАН';

  @override
  String get mechanicValveHeadline => 'Только налив';

  @override
  String get mechanicValveBody =>
      'Можно наливать в клапанную пробирку, но не забирать. Это постоянное хранилище.';

  @override
  String get mechanicValveTip =>
      'Неверный цвет может застрять. Заполняй клапаны осторожно.';

  @override
  String get mechanicValveCaption => 'Только вход';

  @override
  String get mechanicPortalTitle => 'ПАРА ПОРТАЛОВ';

  @override
  String get mechanicPortalHeadline => 'Вошёл в один — вышел из другого';

  @override
  String get mechanicPortalBody =>
      'Налей в один портал — жидкость появится в парном. Две пробирки связаны.';

  @override
  String get mechanicPortalTip =>
      'Целься в один портал — наполнение на другой стороне.';

  @override
  String get mechanicPortalCaption => 'A вход → B выход';

  @override
  String get mechanicBombTitle => 'БОМБА-ПРОБИРКА';

  @override
  String get mechanicBombHeadline => 'Уложись до таймера';

  @override
  String get mechanicBombBody =>
      'Отмеченная пробирка с обратным отсчётом. Заполни одним цветом до нуля, иначе провал.';

  @override
  String get mechanicBombTip =>
      'Сначала обезопась бомбу, потом сортируй остальное.';

  @override
  String get mechanicBombCaption => 'Заполни до конца отсчёта';

  @override
  String get mechanicNarrowTitle => 'УЗКАЯ ПРОБИРКА';

  @override
  String get mechanicNarrowHeadline => 'Буфер на 2 единицы';

  @override
  String get mechanicNarrowBody =>
      'На уровне короткая помощница — максимум 2 единицы. Для тесных манёвров.';

  @override
  String get mechanicNarrowTip =>
      'Для победы должна быть пустой. 2 единицы — не завершение; опустоши снова.';

  @override
  String get mechanicNarrowCaption => 'Ёмкость 2 • пустая для победы';

  @override
  String get mechanicMovingTitle => 'ПОДВИЖНАЯ РАСКЛАДКА';

  @override
  String get mechanicMovingHeadline => 'Пробирки меняются местами';

  @override
  String get mechanicMovingBody =>
      'Каждые несколько ходов поле сдвигается и порядок меняется. Те же пробирки — новые позиции.';

  @override
  String get mechanicMovingTip => 'Отслеживай пробирки по id и цветам.';

  @override
  String get mechanicMovingCaption => 'Сдвиг каждые 3 хода';

  @override
  String get mechanicBossTitle => 'BOSS-ЭКСПЕРИМЕНТ';

  @override
  String get mechanicBossHeadline => 'Жёстче правила';

  @override
  String get mechanicBossBody =>
      'Boss-уровни с лимитом ходов и несколькими особыми правилами. Играй с планом.';

  @override
  String get mechanicBossTip =>
      'Держись близко к Par; избегай лишних отмен и наливов.';

  @override
  String get mechanicBossCaption => 'Лимит + особые правила';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Уровень $levelString';
  }

  @override
  String get movesLabel => 'Ходы';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Безлимитные попытки  •  Офлайн';
  }

  @override
  String get pauseTooltip => 'Пауза';

  @override
  String get resumeTooltip => 'Продолжить';

  @override
  String get settingsTooltip => 'Настройки';

  @override
  String get pausedTitle => 'ИГРА НА ПАУЗЕ';

  @override
  String get pausedBody => 'Таймер и звуки отсчёта на паузе.';

  @override
  String get resumeCta => 'ПРОДОЛЖИТЬ';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString с';
  }

  @override
  String get easyRelaxed => 'ЛЁГКИЙ  •  СПОКОЙНО';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString ХОДОВ';
  }

  @override
  String get hiddenLiquid => 'СКРЫТАЯ ЖИДКОСТЬ';

  @override
  String get frozenTube => 'ЗАМОРОЖЕННАЯ ПРОБИРКА';

  @override
  String get iceCleared => 'ЛЁД РАСТАЯЛ';

  @override
  String get lockedTube => 'ЗАБЛОКИРОВАННАЯ ПРОБИРКА';

  @override
  String get lockOpened => 'ЗАМОК ОТКРЫТ';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'СЖЕЧЬ ЛИШНЕЕ • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'НАГРЕВ • $remainingString';
  }

  @override
  String get portalPair => 'ПАРА ПОРТАЛОВ';

  @override
  String get oneWayValve => 'ОДНОНАПРАВЛЕННЫЙ КЛАПАН';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'БОМБА • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'СДВИГ КАЖДЫЕ $movesString ХОД.';
  }

  @override
  String get narrowTubeCap2 => 'УЗКАЯ ПРОБИРКА • ЁМК. 2';

  @override
  String get hiddenMix => 'СКРЫТОЕ СМЕШЕНИЕ';

  @override
  String get portalFlow => 'ПОТОК ПОРТАЛА!';

  @override
  String get tubesShifted => 'ПРОБИРКИ СДВИНУЛИСЬ!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'БОМБА: $remainingString ХОДОВ!';
  }

  @override
  String get iceBroken => 'Лёд сломан! Замороженная пробирка снова доступна.';

  @override
  String get lockUnlocked => 'Замок открыт! Новая пробирка готова.';

  @override
  String get tubeFrozenMsg =>
      'Пробирка заморожена. Несколько верных ходов — и оттает.';

  @override
  String get tubeLockedMsg =>
      'Пробирка заблокирована. Сначала заверши другой цвет.';

  @override
  String get valveOneWayMsg =>
      'Золотой клапан односторонний: налить можно, забрать нельзя.';

  @override
  String get heatExhaustedMsg => 'У нагревателя закончились заряды сжигания.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Недостаточно монет ($costString).';
  }

  @override
  String get adFailed => 'Не удалось завершить рекламу.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString монет • $title снова открыто';
  }

  @override
  String reopenAd(String title) {
    return 'Открыто за рекламу • $title';
  }

  @override
  String get tipQuotaEmpty => 'Подсказки на этом уровне закончились.';

  @override
  String get rewardsNotReady => 'Система наград не готова.';

  @override
  String get freeHintUsed => 'Бесплатная подсказка использована.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Подсказка: -$costString монет';
  }

  @override
  String get noHintAvailable => 'Сейчас нет полезной подсказки.';

  @override
  String get assistHint => 'подсказка';

  @override
  String get assistUndo => 'отмена';

  @override
  String get freeHintEarned => 'Получена 1 бесплатная подсказка.';

  @override
  String get freeUndoEarned => 'Получена 1 бесплатная отмена.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString кредит • неудачная попытка (мин. $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Лимит долга ($floorString). Смотри рекламу для повтора.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString кредит • перезапуск';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Недостаточно монет ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Смотри рекламу, чтобы получить 1 бесплатную $label.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Лимит долга ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Ты на нижней границе долга. Смотри рекламу для новой попытки.';

  @override
  String get tipUnlockPaidBody =>
      'Ты уже видел это правило бесплатно.\nПовторное чтение стоит монет.';

  @override
  String get tipUnlockAdBody =>
      'Монет не хватает.\nСмотри рекламу, чтобы открыть подсказку бесплатно.';

  @override
  String get yourBalance => 'Баланс: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Заплатить $costString';
  }

  @override
  String get timeUp => 'ВРЕМЯ ВЫШЛО';

  @override
  String get bombExploded => 'БОМБА ВЗОРВАЛАСЬ!';

  @override
  String get moveLimitReached => 'ЛИМИТ ХОДОВ ДОСТИГНУТ';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Неудача: -$amountString кредит (долг мин. $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Можно отключить давление времени в лёгком режиме.';

  @override
  String get bombFailHint =>
      'Заполни отмеченную пробирку одним цветом до конца красного отсчёта.';

  @override
  String get bossFailHint =>
      'Boss-эксперимент превысил лимит ходов. Планируй смешения и пустые пробирки.';

  @override
  String get debtLimitRetryHint =>
      'Достигнут лимит долга — смотри рекламу для повтора.';

  @override
  String get retryWithAd => 'РЕКЛАМА • ПОВТОР';

  @override
  String get retryAgain => 'ЕЩЁ РАЗ';

  @override
  String get vaporized => 'ИСПАРЕНО!';

  @override
  String colorClearedBonus(String color) {
    return '$color УБРАН  •  +4 С';
  }

  @override
  String get newColorFormed => 'НОВЫЙ ЦВЕТ!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 С';
  }

  @override
  String get legendaryFlow => 'ЛЕГЕНДАРНЫЙ ПОТОК!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'ПОТОК x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Легендарный поток';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Поток x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Пробирка $id, заполнено $unitsString ед.';
  }

  @override
  String get colorRed => 'Красный';

  @override
  String get colorBlue => 'Синий';

  @override
  String get colorPurple => 'Фиолетовый';

  @override
  String get colorYellow => 'Жёлтый';

  @override
  String get colorGreen => 'Зелёный';

  @override
  String get colorOrange => 'Оранжевый';

  @override
  String get colorPink => 'Розовый';

  @override
  String get colorCyan => 'Голубой';

  @override
  String get colorLime => 'Лайм';

  @override
  String get colorBrown => 'Коричневый';

  @override
  String get skipLevelOfferBody =>
      'Уровень сложный. Посмотрите рекламу, чтобы открыть следующий.';

  @override
  String get skipLevelCta => 'РЕКЛАМА • ПРОПУСТИТЬ';

  @override
  String get skipLevelNote => 'Позже сможете вернуться и пройти этот уровень.';

  @override
  String get skipLevelUnlocked => 'Следующий уровень открыт!';

  @override
  String get developerModeTitle => 'Режим разработчика';

  @override
  String get developerModePasswordHint => 'Пароль';

  @override
  String get developerModeUnlock => 'Разблокировать';

  @override
  String get developerModeEnabled => 'Все уровни открыты для теста.';

  @override
  String get developerModeWrongPassword => 'Неверный пароль';

  @override
  String get developerModeActive => 'Режим разработчика включён';

  @override
  String get developerModeDisable => 'Отключить режим разработчика';
}
