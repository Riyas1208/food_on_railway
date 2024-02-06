import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';


class EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/emptyCart.png',
              width: 250,
              height: 250,
            ),
            SizedBox(height: 20),
            Text(
              'Your cart is empty',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "text",
                  color: AppColors.textColor
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Look like you haven’t made\n         your choice yet',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "text",
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
