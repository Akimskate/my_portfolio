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
    required this.scrollController,
  }) : _controller = controller;

  final AnimationController _controller;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        double offset = scrollController.hasClients ? scrollController.offset : 0;
        double parallaxOffset = offset * 0.6;

        return Stack(
          children: [
            Positioned.fill(
              child: Transform.translate(
                offset: Offset(0, -parallaxOffset * 1.5),
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
            ),
            Positioned.fill(
                child: Transform.translate(
              offset: Offset(0, -parallaxOffset),
              child: CustomPaint(
                painter: BackgroundGrid(color: Theme.of(context).colorScheme.inverseSurface),
                child: Container(),
              ),
            )),
            SectionWrapper(
              center: true,
              child: Transform.translate(
                offset: Offset(0, -parallaxOffset * 1.2),
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
            ),
          ],
        );
      },
    );
  }
}
