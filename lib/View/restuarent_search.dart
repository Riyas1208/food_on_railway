import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/Model/restuarent_model.dart';
import 'package:food_on_railway/View/Widget/restuarent_widget.dart';
import 'Widget/bottom_nav_widget.dart';

class RestuarentSearch extends StatelessWidget {
  const RestuarentSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(screenSize.width * 0.02),
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
                padding: EdgeInsets.all(screenSize.width * 0.015),
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
            SizedBox(height: screenSize.height * 0.01),
            Container(
              height: screenSize.height * 0.08,
              child: Padding(
                padding: EdgeInsets.all(screenSize.width * 0.02),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Select Stations',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.black,),
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
