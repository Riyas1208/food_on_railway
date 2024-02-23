import 'package:flutter/material.dart';
import 'Utils/app_colors.dart';

class TabItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;


  const TabItem({
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color boxColor = isSelected ? AppColors.textColor : Colors.white;
    Color borderColor =
    isSelected ? Colors.transparent : AppColors.textColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 105,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                fontFamily: "text1",
                color: isSelected ? Colors.white : AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
