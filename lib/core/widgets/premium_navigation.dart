import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';

class PremiumBottomItem {
  const PremiumBottomItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
}

class PremiumBottomBar extends StatelessWidget {
  const PremiumBottomBar({
    super.key,
    required this.items,
    required this.activeIndex,
  });

  final List<PremiumBottomItem> items;
  final int activeIndex;

  @override
  Widget build(BuildContext context) => Container(
    height: 70,
    margin: const EdgeInsets.fromLTRB(14, 6, 14, 12),
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0xF215223A), Color(0xF2071020)],
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xAA42536E)),
      boxShadow: const [
        BoxShadow(
          color: Color(0x80000612),
          blurRadius: 18,
          offset: Offset(0, 8),
        ),
      ],
    ),
    child: Row(
      children: List.generate(items.length, (index) {
        final item = items[index];
        final active = index == activeIndex;
        final color = active ? AppColors.cyan : const Color(0xFF8D9AB3);
        return Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: item.onTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              decoration: BoxDecoration(
                gradient: active
                    ? const LinearGradient(
                        colors: [Color(0x4421C9E2), Color(0x221177C2)],
                      )
                    : null,
                borderRadius: BorderRadius.circular(14),
                border: active
                    ? Border.all(color: const Color(0x6619C9E3))
                    : null,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconFor(item.icon), color: color, size: 23),
                  const SizedBox(height: 3),
                  Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: color,
                      fontSize: 9,
                      fontWeight: active ? FontWeight.w900 : FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    ),
  );

  IconData iconFor(IconData icon) => icon;
}

class PremiumCircleButton extends StatelessWidget {
  const PremiumCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) => Tooltip(
    message: tooltip ?? '',
    child: InkResponse(
      onTap: onPressed,
      radius: 24,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF1A2A43), Color(0xFF091224)],
          ),
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF52617A)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x6600020B),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Icon(icon, size: 23, color: const Color(0xFFD7DFEA)),
      ),
    ),
  );
}
