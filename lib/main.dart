import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) {
        return const MaterialApp(
          home: HomeView(),
        );
      },
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => const HomeMobilePortrait(),
        landscape: (context) => const HomeMobileLandscape(),
      ),
      tablet: (_) => const HomeViewTablet(),
      desktop: (_) => const HomeViewDesktop(),
    );
  }
}

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Desktop'),
        ),
        body: const Center(
          child: Text('Desktop'),
        ));
  }
}

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tablet'),
        ),
        body: const Center(
          child: Text('Tablet'),
        ));
  }
}

class HomeMobilePortrait extends StatelessWidget {
  const HomeMobilePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Mobile Portrait'),
        ),
        body: const Center(
          child: Text('Home Mobile Portrait'),
        ));
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Mobile Landscape'),
        ),
        body: const Center(
          child: Text('Home Mobile Landscape'),
        ));
  }
}
