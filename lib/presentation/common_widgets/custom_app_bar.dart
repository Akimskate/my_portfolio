import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => _buildMobileAppBar(),
        landscape: (context) => _buildMobileAppBar(),
      ),
      tablet: (_) => _buildTabletAppBar(),
      desktop: (_) => _buildDesktopAppBar(),
    );
  }

  Widget _buildMobileAppBar() {
    return AppBar(
      leading: const LabelName(),
      leadingWidth: 150,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[300],
            height: 0.5,
          )),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildTabletAppBar() {
    return AppBar(
      centerTitle: true,
      leading: const LabelName(),
      leadingWidth: 150,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[300],
            height: 0.5,
          )),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Profile'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Settings'),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildDesktopAppBar() {
    return AppBar(
      centerTitle: true,
      leading: const LabelName(),
      leadingWidth: 150,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[300],
            height: 0.5,
          )),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Profile'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Settings'),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
}

class LabelName extends StatelessWidget {
  const LabelName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> colorizeColors = [
      Theme.of(context).colorScheme.inverseSurface,
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.inverseSurface,
    ];
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Akim Svoboda',
            textStyle: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Dart Side',
            textStyle: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            colors: colorizeColors,
          ),
        ],
        repeatForever: true,
        pause: const Duration(milliseconds: 1000),
      ),
    );
  }
}
