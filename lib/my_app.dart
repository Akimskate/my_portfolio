import 'package:flutter/material.dart';
import 'package:mouse_follower/mouse_follower.dart';
import 'package:flutter/foundation.dart';
import 'package:my_portfolio/presentation/home_view/home_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) {
        return MaterialApp(
          home: MouseFollower(
            onHoverMouseStylesStack: [
              MouseStyle(
                size: const Size(50, 50),
                latency: const Duration(milliseconds: 25),
                decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColor.withAlpha(150)),
              ),
            ],
            child: kIsWeb ? const SelectionArea(child: HomeView()) : const HomeView(),
          ),
        );
      },
    );
  }
}
