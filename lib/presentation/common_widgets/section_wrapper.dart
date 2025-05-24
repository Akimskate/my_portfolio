import 'package:flutter/material.dart';

class SectionWrapper extends StatelessWidget {
  const SectionWrapper({
    super.key,
    required this.child,
    this.center = false,
    this.padding = const EdgeInsets.all(32),
    this.color,
  });

  final Widget child;
  final bool center;
  final EdgeInsetsGeometry padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: color,
      padding: padding,
      constraints: BoxConstraints(minHeight: screenHeight),
      child: center
          ? Center(child: child)
          : child,
    );
  }
}
