import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mouse_follower/mouse_follower.dart';
import 'package:my_portfolio/app/providers/theme_provider.dart';
import 'package:my_portfolio/presentation/home_view/home_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveApp(
      builder: (context) {
        final themeMode = ref.watch(themeProvider);

        return MaterialApp(
          title: 'Akim Svoboda',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          home: MouseFollower(
            onHoverMouseStylesStack: [
              MouseStyle(
                size: const Size(50, 50),
                latency: const Duration(milliseconds: 25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor.withAlpha(150),
                ),
              ),
            ],
            child: const SelectionArea(
              child: HomeView(),
            ),
          ),
        );
      },
    );
  }
}
