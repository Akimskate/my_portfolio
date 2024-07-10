import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/app/providers/theme_provider.dart';
import 'package:my_portfolio/app/utils/gradient_text.dart';

class TitleText extends ConsumerWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return Column(
      children: [
        GradientText(
          'Hi! I\'m Akim Svoboda!',
          style: const TextStyle(fontSize: 60),
          gradient: LinearGradient(
            colors: [
              themeMode == ThemeMode.light
                  ? const Color.fromARGB(255, 65, 65, 65)
                  : const Color.fromARGB(255, 223, 223, 223),
              themeMode == ThemeMode.dark
                  ? const Color.fromARGB(255, 223, 223, 223)
                  : const Color.fromARGB(255, 49, 49, 49),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Flutter Developer | Mobile & Web Enthusiast',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          'Passionate about creating beautiful and functional applications using Flutter.',
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
