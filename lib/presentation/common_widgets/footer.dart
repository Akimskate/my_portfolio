import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/app/utils/url_constants.dart';
import 'package:my_portfolio/app/utils/url_launcher_helper.dart';
import 'package:my_portfolio/presentation/common_widgets/app_button_styles.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.inverseSurface,
            height: 0.3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.envelope,
                    size: 30,
                  ),
                  style: AppButtonStyles.getButtonStyle(context),
                  onPressed: () {
                    UrlLauncherHelper.launch(UrlConstants.email);
                  },
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Build with Flutter framework "),
              Icon(
                FontAwesomeIcons.flutter,
                size: 15,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(18),
            child: const Center(
              child: Text(
                '© 2024 Akim Svoboda. Ukraine',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
