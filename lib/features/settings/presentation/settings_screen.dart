import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/audio/audio_service.dart';
import '../../../core/widgets/cosmic_backdrop.dart';
import '../../../core/widgets/glass_panel.dart';
import '../../../core/widgets/premium_navigation.dart';
import '../../progress/data/progress_repository.dart';
import '../domain/game_difficulty.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late bool sound;
  late bool music;
  late bool haptics;
  late bool reducedAnimations;
  late bool colorAccessibility;
  late GameDifficulty difficulty;
  int _activeTab = 3;

  @override
  void initState() {
    super.initState();
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
  }

  String get _subtitle => switch (_activeTab) {
    1 => 'Ses ve titreşim kontrolleri',
    2 => 'Renkler, desenler ve animasyonlar',
    _ => 'Zorluk ve genel oyun tercihleri',
  };

  Widget _audioContent(ProgressRepository progress) => ListView(
    key: const ValueKey('audio-settings'),
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 22),
    children: [
      const _SettingsSectionTitle(
        icon: Icons.volume_up_rounded,
        title: 'SES VE GERİ BİLDİRİM',
      ),
      GlassPanel(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            _SettingsSwitch(
              icon: Icons.volume_up_rounded,
              title: 'Ses efektleri',
              subtitle: 'Seçim, dökme ve başarı sesleri',
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
              title: 'Arka plan müziği',
              subtitle: 'Sakin, kozmik ortam müziği',
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
              title: 'Titreşim',
              subtitle: 'Dokunuşlarda hafif geri bildirim',
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

  Widget _visualContent(ProgressRepository progress) => ListView(
    key: const ValueKey('visual-settings'),
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 22),
    children: [
      const _SettingsSectionTitle(
        icon: Icons.palette_rounded,
        title: 'GÖRSEL TERCİHLERİ',
      ),
      GlassPanel(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fosforlu sıvı paleti',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Oyunda kullanılan canlı neon renkler',
                          style: TextStyle(
                            color: AppColors.textMuted,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _NeonPalette(),
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0x334D5C8B)),
            _SettingsSwitch(
              icon: Icons.visibility_rounded,
              title: 'Renk erişilebilirliği',
              subtitle: 'Sıvılara ayırt edici ince desenler ekler',
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
              title: 'Azaltılmış animasyon',
              subtitle: 'Dökme hareketlerini hızlandırır',
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

  Widget _generalContent(ProgressRepository progress) => ListView(
    key: const ValueKey('general-settings'),
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 22),
    children: [
      const _SettingsSectionTitle(
        icon: Icons.speed_rounded,
        title: 'ZORLUK VE ZAMAN BASKISI',
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
      const GlassPanel(
        child: Row(
          children: [
            Icon(Icons.shield_outlined, color: AppColors.mint),
            SizedBox(width: 13),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Çevrimdışı ilerleme',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Bölümlerin ve ayarların bu cihazda güvenle saklanır.',
                    style: TextStyle(color: AppColors.textMuted, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 24),
      const Center(
        child: Text(
          'Liquid Sort Puzzle  •  v1.0.0',
          style: TextStyle(color: Color(0xFF7781A6), fontSize: 12),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
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
                      tooltip: 'Geri',
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AYARLAR',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            _subtitle,
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
                  1 => _audioContent(progress),
                  2 => _visualContent(progress),
                  _ => _generalContent(progress),
                },
              ),
            ),
            PremiumBottomBar(
              activeIndex: _activeTab,
              items: [
                PremiumBottomItem(
                  icon: Icons.home_rounded,
                  label: 'Ana Sayfa',
                  onTap: () =>
                      Navigator.of(context).popUntil((route) => route.isFirst),
                ),
                PremiumBottomItem(
                  icon: Icons.volume_up_rounded,
                  label: 'Ses',
                  onTap: () => setState(() => _activeTab = 1),
                ),
                PremiumBottomItem(
                  icon: Icons.palette_rounded,
                  label: 'Görsel',
                  onTap: () => setState(() => _activeTab = 2),
                ),
                PremiumBottomItem(
                  icon: Icons.settings_rounded,
                  label: 'Ayarlar',
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
  Widget build(BuildContext context) => Material(
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
                    difficulty.label,
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    difficulty.description,
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
      style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
    ),
    value: value,
    activeTrackColor: AppColors.periwinkle,
    onChanged: onChanged,
  );
}
