import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/animated_background_ovoids.dart';
import 'package:my_portfolio/app/utils/background_grid.dart';
import 'package:my_portfolio/presentation/common_widgets/avatar.dart';
import 'package:my_portfolio/presentation/common_widgets/djinni_button.dart';
import 'package:my_portfolio/presentation/common_widgets/section_wrapper.dart';
import 'package:my_portfolio/presentation/common_widgets/title_text.dart';

class TabletProfileSection extends StatelessWidget {
  const TabletProfileSection({
    super.key,
    required AnimationController controller,
  }) : _controller = controller;

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              painter: AnimatedBackgroundOvoids(context, progress: _controller.value),
              child: Container(),
            );
          },
        ),
      ),
      Positioned.fill(
          child: CustomPaint(
        painter: BackgroundGrid(color: Theme.of(context).colorScheme.inverseSurface),
        child: Container(),
      )),
      SectionWrapper(
        center: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            TitleText(titleSize: 50, helpTextSize: 16),
            SizedBox(height: 20),
            Avatar(),
            SizedBox(height: 20),
            DjinniButton(),
          ],
        ),
      ),
    ]);
  }
}
