import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';


class DottedLine extends CustomPainter {
  double radius;
  DottedLine({required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 8;
    double dashSpace = 6;
    double startX = radius;

    final paint = Paint()
      ..color = AppColors.secondaryColor
      ..strokeWidth = 4;
    while (startX < size.width - radius) {
      canvas.drawLine(Offset(startX, size.height / 1.5),
          Offset(startX + dashWidth, size.height / 1.5), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}