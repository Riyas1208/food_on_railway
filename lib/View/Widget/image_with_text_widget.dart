import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String text;

  const ImageWithText({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.clipColor,
          ),
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.none,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(text,
          style:const TextStyle(
            fontFamily: "text",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: AppColors.textColor4
          ) ,),
      ],
    );
  }
}
