import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BackgroundGrid extends CustomPainter {
  final Color color;

  BackgroundGrid({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    final gradient = ui.Gradient.radial(
      Offset(width / 2, height / 2),
      width / 3,
      [
        color.withValues(alpha: 1.0),
        color.withValues(alpha: 0.0),
      ],
    );

    final paint = Paint()
      ..shader = gradient
      ..strokeWidth = 0.2;

    const double gridSpacingHorizontal = 40;
    const double gridSpacingVertical = 40;

    for (double x = 0; x < width; x += gridSpacingHorizontal) {
      canvas.drawLine(Offset(x, 0), Offset(x, height), paint);
    }

    for (double y = 0; y < height; y += gridSpacingVertical) {
      canvas.drawLine(Offset(0, y), Offset(width, y), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
