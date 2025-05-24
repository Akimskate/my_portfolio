import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/background_grid.dart';
import 'package:my_portfolio/presentation/common_widgets/avatar.dart';
import 'package:my_portfolio/presentation/common_widgets/djinni_button.dart';
import 'package:my_portfolio/presentation/common_widgets/section_wrapper.dart';
import 'package:my_portfolio/presentation/common_widgets/title_text.dart';

class MobileProfileSection extends StatelessWidget {
  const MobileProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
          child: CustomPaint(
        painter: BackgroundGrid(color: Theme.of(context).colorScheme.inverseSurface),
        child: Container(),
      )),
      SectionWrapper(
        center: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText(titleSize: 40, helpTextSize: 14),
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
