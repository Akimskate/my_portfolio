import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/background_grid.dart';
import 'package:my_portfolio/presentation/common_widgets/avatar.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';
import 'package:my_portfolio/presentation/common_widgets/title_text.dart';

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet'),
      ),
      body: CustomPaint(
        painter: BackgroundGrid(color: Theme.of(context).colorScheme.inverseSurface),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(titleSize: 50, helpTextSize: 16),
              SizedBox(height: 20),
              Avatar(),
            ],
          ),
        ),
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
