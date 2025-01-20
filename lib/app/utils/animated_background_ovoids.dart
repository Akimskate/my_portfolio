import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBackgroundOvoids extends CustomPainter {
  final double progress;
  final BuildContext context;

  AnimatedBackgroundOvoids(this.context, {required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Theme.of(context).colorScheme.outline
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 80);

    // First figure
    const double centerX1 = 0;
    final double centerY1 = size.height * 0.3;

    canvas.save();

    // Rotate
    final double rotationAngle = pi * progress;
    canvas.translate(centerX1, centerY1);
    canvas.rotate(rotationAngle);
    canvas.translate(-centerX1, -centerY1);

    // Paint figure
    final double eggWidth = size.height * 0.2;
    final double eggHeight = size.height * 0.4;
    Path eggPath = Path()
      ..moveTo(centerX1, centerY1 - eggHeight / 2)
      ..quadraticBezierTo(
        centerX1 - eggWidth / 2,
        centerY1 - eggHeight / 4,
        centerX1 - eggWidth / 2,
        centerY1 + eggHeight / 4,
      )
      ..quadraticBezierTo(
        centerX1 - eggWidth / 2,
        centerY1 + eggHeight / 2,
        centerX1,
        centerY1 + eggHeight / 2,
      )
      ..quadraticBezierTo(
        centerX1 + eggWidth / 2,
        centerY1 + eggHeight / 2,
        centerX1 + eggWidth / 2,
        centerY1 + eggHeight / 4,
      )
      ..quadraticBezierTo(
        centerX1 + eggWidth / 2,
        centerY1 - eggHeight / 4,
        centerX1,
        centerY1 - eggHeight / 2,
      )
      ..close();

    canvas.drawPath(eggPath, paint);

    canvas.restore();

    // Second figure
    final double centerX2 = size.width;
    final double centerY2 = size.height * 0.7;

    canvas.save();

    // Rotate
    final double rotationAngle2 = pi * progress;
    canvas.translate(centerX2, centerY2);
    canvas.rotate(rotationAngle2);
    canvas.translate(-centerX2, -centerY2);

    Path eggPath2 = Path()
      ..moveTo(centerX2, centerY2 - eggHeight)
      ..quadraticBezierTo(
        centerX2 - eggWidth / 2,
        centerY2 - eggHeight / 4,
        centerX2 - eggWidth / 2,
        centerY2 + eggHeight / 4,
      )
      ..quadraticBezierTo(
        centerX2 - eggWidth / 2,
        centerY2 + eggHeight / 2,
        centerX2,
        centerY2 + eggHeight / 2,
      )
      ..quadraticBezierTo(
        centerX2 + eggWidth / 2,
        centerY2 + eggHeight / 2,
        centerX2 + eggWidth / 2,
        centerY2 + eggHeight / 4,
      )
      ..quadraticBezierTo(
        centerX2 + eggWidth / 2,
        centerY2 - eggHeight / 4,
        centerX2,
        centerY2 - eggHeight / 2,
      )
      ..close();

    canvas.drawPath(eggPath2, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
