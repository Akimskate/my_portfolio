import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/app/theme/theme_provider.dart';
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
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          home: const SelectionArea(
            child: HomeView(),
          ),
          
        );
      },
    );
  }
}
