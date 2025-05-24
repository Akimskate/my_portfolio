import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:my_portfolio/app/utils/url_constants.dart';
import 'package:my_portfolio/app/utils/url_launcher_helper.dart';
import 'package:my_portfolio/presentation/common_widgets/app_button_styles.dart';
import 'package:my_portfolio/presentation/common_widgets/name_animated_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onScrollToProfile;
  final VoidCallback onScrollToPortfolio;
  final VoidCallback onScrollToFooter;

  const CustomAppBar(
      {super.key, required this.onScrollToProfile, required this.onScrollToPortfolio, required this.onScrollToFooter});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => _buildMobileAppBar(context),
        landscape: (context) => _buildMobileAppBar(context),
      ),
      tablet: (_) => _buildTabletAppBar(context),
      desktop: (_) => _buildDesktopAppBar(context),
    );
  }

  Widget _buildMobileAppBar(BuildContext context) {
    return AppBar(
      leading: const NameAnimatedWidget(),
      leadingWidth: 150,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Theme.of(context).colorScheme.inverseSurface,
            height: 0.2,
          )),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.green,
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }

  Widget _buildTabletAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const NameAnimatedWidget(),
      leadingWidth: 150,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Theme.of(context).colorScheme.inverseSurface,
            height: 0.5,
          )),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onScrollToProfile,
            style: AppButtonStyles.getButtonStyle(context),
            child: const Text('Home'),
          ),
          const SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: onScrollToPortfolio,
            style: AppButtonStyles.getButtonStyle(context),
            child: const Text('Profile'),
          ),
          const SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: onScrollToFooter,
            style: AppButtonStyles.getButtonStyle(context),
            child: const Text('Connect'),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.linkedinIn,
            size: 20,
          ),
          style: AppButtonStyles.getButtonStyle(context),
          onPressed: () {
            UrlLauncherHelper.launch(UrlConstants.linkedIn);
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.telegram,
            size: 20,
          ),
          style: AppButtonStyles.getButtonStyle(context),
          onPressed: () {
            UrlLauncherHelper.launchTelegram();
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.github,
            size: 20,
          ),
          style: AppButtonStyles.getButtonStyle(context),
          onPressed: () {
            UrlLauncherHelper.launch(UrlConstants.gitHub);
          },
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }

  Widget _buildDesktopAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const NameAnimatedWidget(),
      leadingWidth: 150,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Theme.of(context).colorScheme.inverseSurface,
            height: 0.5,
          )),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onScrollToProfile,
            style: AppButtonStyles.getButtonStyle(context),
            child: const Text('Home'),
          ),
          const SizedBox(
            width: 40,
          ),
          TextButton(
            onPressed: onScrollToPortfolio,
            style: AppButtonStyles.getButtonStyle(context),
            child: const Text('Profile'),
          ),
          const SizedBox(
            width: 40,
          ),
          TextButton(
            onPressed: onScrollToFooter,
            style: AppButtonStyles.getButtonStyle(context),
            child: const Text('Connect'),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.linkedinIn,
            size: 30,
          ),
          style: AppButtonStyles.getButtonStyle(context),
          onPressed: () {
            UrlLauncherHelper.launch(UrlConstants.linkedIn);
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.telegram,
            size: 30,
          ),
          style: AppButtonStyles.getButtonStyle(context),
          onPressed: () {
            UrlLauncherHelper.launchTelegram();
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.github,
            size: 30,
          ),
          style: AppButtonStyles.getButtonStyle(context),
          onPressed: () {
            UrlLauncherHelper.launch(UrlConstants.gitHub);
          },
        ),
        const SizedBox(
          width: 40,
        )
      ],
    );
  }
}
