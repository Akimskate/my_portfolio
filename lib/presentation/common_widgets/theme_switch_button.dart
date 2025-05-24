import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/app/theme/theme_provider.dart';

class ThemeSwitchFAB extends ConsumerWidget {
  const ThemeSwitchFAB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    Color fabBackgroundColor = Theme.of(context).primaryColor;
    if (themeMode == ThemeMode.dark) {
      fabBackgroundColor = const Color.fromARGB(255, 39, 39, 39);
    } else {
      fabBackgroundColor = const Color.fromARGB(255, 240, 240, 240);
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: FloatingActionButton(
        mini: true,
        backgroundColor: fabBackgroundColor,
        shape: CircleBorder(
          side: BorderSide(color: themeMode == ThemeMode.light ? Colors.black : Colors.white, width: 0.3),
        ),
        onPressed: () {
          ref.read(themeProvider.notifier).state = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
        },
        child: Icon(
            color: themeMode == ThemeMode.light ? Colors.black : Colors.white,
            themeMode == ThemeMode.light ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
      ),
    );
  }
}
