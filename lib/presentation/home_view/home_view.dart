import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/screens/desktop/desktop_page.dart';
import 'package:my_portfolio/presentation/screens/mobile/mobile_page.dart';
import 'package:my_portfolio/presentation/screens/tablet/tablet_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => const MobilePage(),
        landscape: (context) => const MobilePage(),
      ),
      tablet: (_) => OrientationLayoutBuilder(
        portrait: (context) => const TabletPage(),
        landscape: (context) => const TabletPage(),
      ),
      desktop: (_) => const DesktopPage(),
    );
  }
}
