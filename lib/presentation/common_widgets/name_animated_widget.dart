import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameAnimatedWidget extends StatelessWidget {
  const NameAnimatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> colorizeColors = [
      Theme.of(context).colorScheme.inverseSurface,
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.inverseSurface,
    ];
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Akim Svoboda',
            textStyle: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Dart Side',
            textStyle: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            colors: colorizeColors,
          ),
        ],
        repeatForever: true,
        pause: const Duration(milliseconds: 1000),
      ),
    );
  }
}
