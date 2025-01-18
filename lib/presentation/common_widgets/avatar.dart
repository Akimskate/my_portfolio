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
        borderRadius: BorderRadius.circular(125),
        boxShadow: [
          BoxShadow(
            color: themeMode == ThemeMode.dark ? Colors.white54 : Colors.black45,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: const Offset(
              0.0,
              0.0,
            ),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/avatar1.jpg',
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
