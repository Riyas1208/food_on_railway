import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryItem({
    required this.imagePath,
    required this.title,
    required this.isSelected,
    this.onTap,
    required UniqueKey key,
  });

  @override
  Widget build(BuildContext context) {
    Color boxColor = isSelected ? AppColors.textColor : Colors.white;
    Color borderColor = isSelected ? Colors.transparent : AppColors.textColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all( // Add border
            color: borderColor,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 60,
              height: 60,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "text",
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
