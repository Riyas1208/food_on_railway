import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/Model/restuarent_model.dart';
import 'package:food_on_railway/View/Widget/restuarent_widget.dart';
import 'Widget/bottom_nav_widget.dart';

class RestuarentSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.boxColor,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Back.png',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
              height: 50, // Specify the desired height
              child: Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Select Stations',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.arrow_drop_down,
                    color: Colors.black,),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
            ),
            FoodItemListWidget(
              foodItems: foodItems,
              station: 'Kuttippuram',
            ),
            FoodItemListWidget(
              foodItems: foodItems,
              station: 'Shournur',
            ),
          ],
        ),
      ),
    );
  }
}
