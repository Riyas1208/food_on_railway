import 'package:flutter/material.dart';

class PNRcardDesign extends CustomClipper<Path> {
  double radius;
  PNRcardDesign({required this.radius});
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    double verticalOffset = size.height / 4.0;
    path.addOval(Rect.fromCircle(
        center: Offset(0.0, verticalOffset), radius: radius));
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, verticalOffset), radius: radius));
    return path;
  }


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}