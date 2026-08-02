import 'package:flutter/material.dart';

class GlassPanel extends StatelessWidget {
  const GlassPanel({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = const BorderRadius.all(Radius.circular(24)),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) => Container(
    padding: padding,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xF215223A), Color(0xF2081123), Color(0xF20A1327)],
      ),
      borderRadius: borderRadius,
      border: Border.all(color: const Color(0xAA40516F), width: .85),
      boxShadow: const [
        BoxShadow(
          color: Color(0x70000512),
          blurRadius: 18,
          offset: Offset(0, 10),
        ),
        BoxShadow(color: Color(0x1919C9E3), blurRadius: 7),
      ],
    ),
    child: child,
  );
}
