import 'package:flutter/material.dart';

class DottedLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double dashWidth = 5;
    double dashSpace = 3;
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
          Offset(0, startY), Offset(size.width, startY), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}