import 'package:flutter/material.dart';

class SectionWrapper extends StatelessWidget {
  const SectionWrapper({
    super.key,
    required this.child,
    this.center = false,
    this.padding = const EdgeInsets.all(32),
    this.color,
    this.adaptiveCardWidth = false,
  });

  final Widget child;
  final bool center;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final bool adaptiveCardWidth;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    Widget content = child;

    if (adaptiveCardWidth) {
      content = LayoutBuilder(
        builder: (context, constraints) {
          return Builder(builder: (_) => child);
        },
      );
    }

    return Container(
      color: color,
      padding: padding,
      constraints: BoxConstraints(minHeight: screenHeight),
      child: center ? Center(child: content) : content,
    );
  }
}
