import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class OrderPlaced extends StatelessWidget {
  final VoidCallback onContinue;

  const OrderPlaced({Key? key, required this.onContinue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/orderPlaced.png',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 20),
            const Text(
              'Order Placed',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "text",
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '   Your order is being prepared.\nYou have 1 minute left to cancel',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "text",
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 60,
                width: 300,
                child: TextButton(
                  onPressed: () {
                    onContinue();
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: "text",
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
