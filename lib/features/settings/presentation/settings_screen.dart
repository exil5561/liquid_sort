import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/audio/audio_service.dart';
import '../../../core/l10n/app_locale.dart';
import '../../../core/l10n/locale_controller.dart';
import '../../../core/widgets/cosmic_backdrop.dart';
import '../../../core/widgets/glass_panel.dart';
import '../../../core/widgets/premium_navigation.dart';
import '../../../l10n/l10n_extensions.dart';
import '../../progress/data/progress_repository.dart';
import '../domain/game_difficulty.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key, this.initialTab = 3});

  /// Bottom bar: 0 home, 1 audio, 2 visual, 3 general.
  final int initialTab;

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  static const _developerPassword = 'hasan';
  static const _developerTapTarget = 7;

  late bool sound;
  late bool music;
  late bool haptics;
  late bool reducedAnimations;
  late bool colorAccessibility;
  late GameDifficulty difficulty;
  late bool developerMode;
  late int _activeTab;
  int _versionTapCount = 0;
  DateTime? _lastVersionTap;

  @override
  void initState() {
    super.initState();
    _activeTab = widget.initialTab.clamp(1, 3);
    final progress = ref.read(progressRepositoryProvider);
    sound = progress.soundEnabled;
    music = progress.musicEnabled;
    haptics = progress.hapticsEnabled;
    reducedAnimations = progress.reducedAnimations;
    final accessibility = progress is AccessibilityPreferences
        ? progress as AccessibilityPreferences
        : null;
    colorAccessibility = accessibility?.colorAccessibilityEnabled ?? false;
    final difficultyPreferences = progress is DifficultyPreferences
        ? progress as DifficultyPreferences
        : null;
    difficulty = difficultyPreferences?.difficulty ?? GameDifficulty.normal;
    final developer = progress is DeveloperModePreferences
        ? progress as DeveloperModePreferences
        : null;
    developerMode = developer?.developerModeEnabled ?? false;
  }

  void _onVersionTap() {
    final now = DateTime.now();
    if (_lastVersionTap == null ||
        now.difference(_lastVersionTap!) > const Duration(seconds: 2)) {
      _versionTapCount = 0;
    }
    _lastVersionTap = now;
    _versionTapCount += 1;
    if (_versionTapCount < _developerTapTarget) return;
    _versionTapCount = 0;
    if (developerMode) {
      setState(() {});
      return;
    }
    unawaited(_promptDeveloperPassword());
  }

  Future<void> _promptDeveloperPassword() async {
    final l10n = context.l10n;
    final password = await showDialog<String>(
      context: context,
      builder: (dialogContext) => const _DeveloperPasswordDialog(),
    );
    if (!mounted || password == null) return;

    if (password != _developerPassword) {
      _showToast(l10n.developerModeWrongPassword);
      return;
    }

    final progress = ref.read(progressRepositoryProvider);
    final developer = progress is DeveloperModePreferences
        ? progress as DeveloperModePreferences
        : null;
    await developer?.setDeveloperModeEnabled(true);
    if (!mounted) return;
    setState(() => developerMode = true);
    _showToast(l10n.developerModeEnabled);
  }

  Future<void> _setDeveloperMode(bool enabled) async {
    final progress = ref.read(progressRepositoryProvider);
    final developer = progress is DeveloperModePreferences
        ? progress as DeveloperModePreferences
        : null;
    await developer?.setDeveloperModeEnabled(enabled);
    if (!mounted) return;
    setState(() => developerMode = enabled);
    if (!enabled) return;
    _showToast(context.l10n.developerModeEnabled);
  }

  void _showToast(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
      );
  }

  String _subtitle(AppLocalizations l10n) => switch (_activeTab) {
    1 => l10n.settingsSubtitleAudio,
    2 => l10n.settingsSubtitleVisual,
    _ => l10n.settingsSubtitleGeneral,
  };

  Widget _audioContent(AppLocalizations l10n, ProgressRepository progress) =>
      ListView(
        key: const ValueKey('audio-settings'),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 22),
        children: [
          _SettingsSectionTitle(
            icon: Icons.volume_up_rounded,
            title: l10n.sectionAudioFeedback,
          ),
          GlassPanel(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                _SettingsSwitch(
                  icon: Icons.volume_up_rounded,
                  title: l10n.soundEffects,
                  subtitle: l10n.soundEffectsSubtitle,
                  value: sound,
                  onChanged: (value) async {
                    setState(() => sound = value);
                    await progress.setSoundEnabled(value);
                    if (!value) {
                      await ref.read(audioServiceProvider).stopEffects();
                    }
                  },
                ),
                const Divider(height: 1, color: Color(0x334D5C8B)),
                _SettingsSwitch(
                  icon: Icons.music_note_rounded,
                  title: l10n.backgroundMusic,
                  subtitle: l10n.backgroundMusicSubtitle,
                  value: music,
                  onChanged: (value) async {
                    setState(() => music = value);
                    await progress.setMusicEnabled(value);
                    await ref.read(audioServiceProvider).setMusicEnabled(value);
                  },
                ),
                const Divider(height: 1, color: Color(0x334D5C8B)),
                _SettingsSwitch(
                  icon: Icons.vibration_rounded,
                  title: l10n.haptics,
                  subtitle: l10n.hapticsSubtitle,
                  value: haptics,
                  onChanged: (value) {
                    setState(() => haptics = value);
                    progress.setHapticsEnabled(value);
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Widget _visualContent(AppLocalizations l10n, ProgressRepository progress) =>
      ListView(
        key: const ValueKey('visual-settings'),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 22),
        children: [
          _SettingsSectionTitle(
            icon: Icons.palette_rounded,
            title: l10n.sectionVisual,
          ),
          GlassPanel(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.neonPalette,
                              style: const TextStyle(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              l10n.neonPaletteSubtitle,
                              softWrap: true,
                              style: const TextStyle(
                                color: AppColors.textMuted,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const _NeonPalette(),
                    ],
                  ),
                ),
                const Divider(height: 1, color: Color(0x334D5C8B)),
                _SettingsSwitch(
                  icon: Icons.visibility_rounded,
                  title: l10n.colorAccessibility,
                  subtitle: l10n.colorAccessibilitySubtitle,
                  value: colorAccessibility,
                  onChanged: (value) {
                    setState(() => colorAccessibility = value);
                    final accessibility = progress is AccessibilityPreferences
                        ? progress as AccessibilityPreferences
                        : null;
                    accessibility?.setColorAccessibilityEnabled(value);
                  },
                ),
                const Divider(height: 1, color: Color(0x334D5C8B)),
                _SettingsSwitch(
                  icon: Icons.motion_photos_off_rounded,
                  title: l10n.reducedAnimations,
                  subtitle: l10n.reducedAnimationsSubtitle,
                  value: reducedAnimations,
                  onChanged: (value) {
                    setState(() => reducedAnimations = value);
                    progress.setReducedAnimations(value);
                  },
                ),
              ],
            ),
          ),
        ],
      );

  bool _localeSelected(LocalePreference pref, Locale locale) {
    if (pref.isSystem) return false;
    final selected = pref.overrideLocale!;
    return selected.languageCode == locale.languageCode &&
        selected.countryCode == locale.countryCode;
  }

  Widget _generalContent(AppLocalizations l10n, ProgressRepository progress) {
    final localePref = ref.watch(localeControllerProvider);
    final localeController = ref.read(localeControllerProvider.notifier);

    return ListView(
      key: const ValueKey('general-settings'),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 22),
      children: [
        _SettingsSectionTitle(
          icon: Icons.speed_rounded,
          title: l10n.sectionDifficulty,
        ),
        GlassPanel(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: GameDifficulty.values
                .map(
                  (option) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: _DifficultyOption(
                      difficulty: option,
                      selected: difficulty == option,
                      onTap: () {
                        setState(() => difficulty = option);
                        final preferences = progress is DifficultyPreferences
                            ? progress as DifficultyPreferences
                            : null;
                        preferences?.setDifficulty(option);
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 18),
        _SettingsSectionTitle(
          icon: Icons.language_rounded,
          title: l10n.language,
        ),
        GlassPanel(
          padding: const EdgeInsets.all(9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 4, 4, 8),
                child: Text(
                  l10n.languageSubtitle,
                  softWrap: true,
                  style: const TextStyle(
                    color: AppColors.textMuted,
                    fontSize: 11,
                  ),
                ),
              ),
              _LanguageOption(
                title: l10n.languageSystem,
                subtitle: l10n.languageSystemSubtitle,
                selected: localePref.isSystem,
                onTap: () => localeController.setSystemLocale(),
              ),
              for (final locale in AppLocale.supported)
                _LanguageOption(
                  title: AppLocale.nativeNames[AppLocale.codeOf(locale)]!,
                  selected: _localeSelected(localePref, locale),
                  onTap: () => localeController.setLocale(locale),
                ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        GlassPanel(
          child: Row(
            children: [
              const Icon(Icons.shield_outlined, color: AppColors.mint),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.offlineProgress,
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      l10n.offlineProgressBody,
                      softWrap: true,
                      style: const TextStyle(
                        color: AppColors.textMuted,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (developerMode) ...[
          const SizedBox(height: 18),
          _SettingsSectionTitle(
            icon: Icons.developer_mode_rounded,
            title: l10n.developerModeTitle,
          ),
          GlassPanel(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.lock_open_rounded,
                    color: Color(0xFFFFC34A),
                  ),
                  title: Text(
                    l10n.developerModeActive,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    l10n.developerModeEnabled,
                    softWrap: true,
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      fontSize: 12,
                    ),
                  ),
                ),
                const Divider(height: 1, color: Color(0x334D5C8B)),
                ListTile(
                  leading: const Icon(
                    Icons.visibility_off_rounded,
                    color: AppColors.textMuted,
                  ),
                  title: Text(l10n.developerModeDisable),
                  onTap: () => unawaited(_setDeveloperMode(false)),
                ),
              ],
            ),
          ),
        ],
        const SizedBox(height: 24),
        Center(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: _onVersionTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                l10n.settingsVersion('1.0.0'),
                style: const TextStyle(color: Color(0xFF7781A6), fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final progress = ref.read(progressRepositoryProvider);
    return Scaffold(
      body: CosmicBackdrop(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 8),
              child: GlassPanel(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 9,
                ),
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  children: [
                    PremiumCircleButton(
                      icon: Icons.arrow_back_rounded,
                      tooltip: l10n.back,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.settingsTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            _subtitle(l10n),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: AppColors.textMuted,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.tune_rounded,
                      color: Color(0xFFFFC34A),
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 220),
                switchInCurve: Curves.easeOut,
                child: switch (_activeTab) {
                  1 => _audioContent(l10n, progress),
                  2 => _visualContent(l10n, progress),
                  _ => _generalContent(l10n, progress),
                },
              ),
            ),
            PremiumBottomBar(
              activeIndex: _activeTab,
              items: [
                PremiumBottomItem(
                  icon: Icons.home_rounded,
                  label: l10n.home,
                  onTap: () =>
                      Navigator.of(context).popUntil((route) => route.isFirst),
                ),
                PremiumBottomItem(
                  icon: Icons.volume_up_rounded,
                  label: l10n.tabAudio,
                  onTap: () => setState(() => _activeTab = 1),
                ),
                PremiumBottomItem(
                  icon: Icons.palette_rounded,
                  label: l10n.tabVisual,
                  onTap: () => setState(() => _activeTab = 2),
                ),
                PremiumBottomItem(
                  icon: Icons.settings_rounded,
                  label: l10n.tabGeneral,
                  onTap: () => setState(() => _activeTab = 3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsSectionTitle extends StatelessWidget {
  const _SettingsSectionTitle({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 4, bottom: 8),
    child: Row(
      children: [
        Icon(icon, color: const Color(0xFFFFC34A), size: 18),
        const SizedBox(width: 7),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color(0xFFFFC34A),
            fontWeight: FontWeight.w900,
            fontSize: 11,
            letterSpacing: .7,
          ),
        ),
      ],
    ),
  );
}

class _NeonPalette extends StatelessWidget {
  const _NeonPalette();

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children:
        const [
              Color(0xFFFF234D),
              Color(0xFF9A25FF),
              Color(0xFF168CFF),
              Color(0xFF12D9EC),
              Color(0xFF55DB4B),
            ]
            .map(
              (color) => Container(
                width: 14,
                height: 14,
                margin: const EdgeInsets.only(left: 4),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white70, width: .7),
                  boxShadow: [
                    BoxShadow(
                      color: color.withValues(alpha: .65),
                      blurRadius: 7,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
  );
}

class _DifficultyOption extends StatelessWidget {
  const _DifficultyOption({
    required this.difficulty,
    required this.selected,
    required this.onTap,
  });

  final GameDifficulty difficulty;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
          decoration: BoxDecoration(
            gradient: selected
                ? const LinearGradient(
                    colors: [Color(0x663E50D9), Color(0x4422D3EE)],
                  )
                : null,
            color: selected ? null : const Color(0x55081120),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: selected ? AppColors.cyan : const Color(0x445E6E99),
              width: selected ? 1.3 : .8,
            ),
            boxShadow: selected
                ? const [BoxShadow(color: Color(0x4422D3EE), blurRadius: 14)]
                : const [],
          ),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: selected
                      ? AppColors.cyan.withValues(alpha: .18)
                      : const Color(0x334D5C8B),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  difficulty == GameDifficulty.easy
                      ? Icons.self_improvement_rounded
                      : difficulty == GameDifficulty.normal
                      ? Icons.timer_rounded
                      : Icons.local_fire_department_rounded,
                  color: selected ? AppColors.cyan : AppColors.textMuted,
                ),
              ),
              const SizedBox(width: 11),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      difficulty.label(l10n),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      difficulty.description(l10n),
                      softWrap: true,
                      style: const TextStyle(
                        color: AppColors.textMuted,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                selected
                    ? Icons.radio_button_checked_rounded
                    : Icons.radio_button_off_rounded,
                color: selected ? AppColors.cyan : AppColors.textMuted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.title,
    this.subtitle,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final String? subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
        decoration: BoxDecoration(
          gradient: selected
              ? const LinearGradient(
                  colors: [Color(0x663E50D9), Color(0x4422D3EE)],
                )
              : null,
          color: selected ? null : const Color(0x55081120),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: selected ? AppColors.cyan : const Color(0x445E6E99),
            width: selected ? 1.3 : .8,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle!,
                      softWrap: true,
                      style: const TextStyle(
                        color: AppColors.textMuted,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Icon(
              selected
                  ? Icons.radio_button_checked_rounded
                  : Icons.radio_button_off_rounded,
              color: selected ? AppColors.cyan : AppColors.textMuted,
            ),
          ],
        ),
      ),
    ),
  );
}

class _SettingsSwitch extends StatelessWidget {
  const _SettingsSwitch({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => SwitchListTile.adaptive(
    secondary: Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: const Color(0x334D63B8),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Icon(icon, color: AppColors.cyan, size: 22),
    ),
    title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
    subtitle: Text(
      subtitle,
      softWrap: true,
      style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
    ),
    value: value,
    activeTrackColor: AppColors.periwinkle,
    onChanged: onChanged,
  );
}

class _DeveloperPasswordDialog extends StatefulWidget {
  const _DeveloperPasswordDialog();

  @override
  State<_DeveloperPasswordDialog> createState() =>
      _DeveloperPasswordDialogState();
}

class _DeveloperPasswordDialogState extends State<_DeveloperPasswordDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    Navigator.of(context).pop(_controller.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      backgroundColor: const Color(0xFF101A2E),
      title: Text(l10n.developerModeTitle),
      content: TextField(
        controller: _controller,
        obscureText: true,
        autofocus: true,
        decoration: InputDecoration(hintText: l10n.developerModePasswordHint),
        onSubmitted: (_) => _submit(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: _submit,
          child: Text(l10n.developerModeUnlock),
        ),
      ],
    );
  }
}
