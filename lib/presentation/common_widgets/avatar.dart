import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/app/providers/theme_provider.dart';

class Avatar extends ConsumerWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(125), // 125 for a container size of 250
        boxShadow: [
          BoxShadow(
            color: themeMode == ThemeMode.dark ? Colors.white54 : Colors.black45, // Color of the glow effect
            blurRadius: 5.0, // Higher value for a larger glow
            spreadRadius: 1.0, // Spread of the glow
            offset: const Offset(
              0.0, // Move shadow horizontally
              0.0, // Move shadow vertically
            ),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'avatar.jpg',
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
