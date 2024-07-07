import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet'),
      ),
      body: const Center(
        child: Text('Tablet'),
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
