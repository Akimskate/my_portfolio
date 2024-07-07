import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';

class MobileLandscapePage extends StatelessWidget {
  const MobileLandscapePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Mobile Landscape'),
      ),
      body: const Center(
        child: Text('Home Mobile Landscape'),
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
