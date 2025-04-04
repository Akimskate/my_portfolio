import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/url_constants.dart';
import 'package:my_portfolio/app/utils/url_launcher_helper.dart';

class DjinniButton extends StatelessWidget {
  const DjinniButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        UrlLauncherHelper.launch(UrlConstants.djinni);
      },
      style: ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
          }
          return const TextStyle(fontSize: 16);
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return Theme.of(context).colorScheme.inverseSurface;
          }
          return Theme.of(context).colorScheme.inverseSurface;
        }),
        shape: WidgetStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
            side: BorderSide(
              color: states.contains(WidgetState.hovered) ? Colors.green : Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8),
          );
        }),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        ),
      ),
      child: const Text("Open to new opportunities"),
    );
  }
}
