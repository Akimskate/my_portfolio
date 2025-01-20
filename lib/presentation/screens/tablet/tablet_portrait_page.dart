import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/animated_background_ovoids.dart';
import 'package:my_portfolio/app/utils/background_grid.dart';
import 'package:my_portfolio/presentation/common_widgets/avatar.dart';
import 'package:my_portfolio/presentation/common_widgets/custom_app_bar.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';
import 'package:my_portfolio/presentation/common_widgets/title_text.dart';

class TabletPortraitPage extends StatefulWidget {
  const TabletPortraitPage({super.key});

  @override
  State<TabletPortraitPage> createState() => _TabletPortraitPageState();
}

class _TabletPortraitPageState extends State<TabletPortraitPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: AnimatedBackgroundOvoids(context, progress: _controller.value),
                child: Container(),
              );
            },
          ),
          CustomPaint(
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
        ],
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
