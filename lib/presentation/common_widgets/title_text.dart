// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_portfolio/app/theme/theme_provider.dart';
import 'package:my_portfolio/app/utils/gradient_text.dart';

class TitleText extends ConsumerWidget {
  final double titleSize;
  final double helpTextSize;

  const TitleText({
    super.key,
    required this.titleSize,
    required this.helpTextSize,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return Column(
      children: [
        GradientText(
          'Hi! I\'m Akim Svoboda!',
          style: GoogleFonts.lato(fontSize: titleSize, fontWeight: FontWeight.bold),
          gradient: LinearGradient(
            colors: themeMode == ThemeMode.light
                ? [const Color.fromARGB(255, 99, 99, 99), const Color.fromARGB(255, 49, 49, 49)]
                : [const Color.fromARGB(255, 223, 223, 223), const Color.fromARGB(255, 139, 139, 139)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Flutter Developer | Mobile & Web Enthusiast',
          style: GoogleFonts.nunito(
            fontSize: helpTextSize,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          'Passionate about creating beautiful and functional applications using Flutter.',
          style: GoogleFonts.nunito(
            fontSize: helpTextSize,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
