import 'package:flutter/material.dart';

class AppButtonStyles {
  static ButtonStyle getButtonStyle(BuildContext context) {
    return ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.hovered)) {
          return Theme.of(context).colorScheme.onSurface;
        }
        return Theme.of(context).colorScheme.outline;
      }),
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      textStyle: WidgetStateProperty.all(
        const TextStyle(fontSize: 22),
      ),
    );
  }
}
