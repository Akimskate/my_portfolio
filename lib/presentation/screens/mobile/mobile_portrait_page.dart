import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/background_grid.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';

class MobilePortraitPage extends StatelessWidget {
  const MobilePortraitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Mobile Portrait'),
      ),
      body: CustomPaint(
        painter: BackgroundGrid(color: Theme.of(context).colorScheme.inverseSurface),
        child: const Center(
          child: Text('Home Mobile Portrait'),
        ),
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
