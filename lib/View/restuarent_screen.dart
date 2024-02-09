import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/Widget/food_item_widget.dart';
import 'package:food_on_railway/View/restuarent_search.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  String _selectedOption = 'veg';
  String _imageAsset = "assets/images/veg.png";

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
                  MaterialPageRoute(builder: (context) => RestuarentSearch()),
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
          children: [
            // Restaurant information
            Container(
              padding: EdgeInsets.all(screenSize.width * 0.04),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: screenSize.height * 0.13,
                      child: Card(
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.all(screenSize.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'DXB RESTAURANT',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.06,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "text",
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  Image.asset("assets/images/share.png"),
                                ],
                              ),
                              SizedBox(height: screenSize.height * 0.01),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      size: screenSize.width * 0.04, color: AppColors.boxColor6),
                                  Text(
                                    '3.8',
                                    style: TextStyle(
                                      fontFamily: "text",
                                      fontSize: screenSize.width * 0.035,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenSize.height * 0.01),
                              Text(
                                "Chicken Ba Bap burger , Chicken Bada Bap burger......",
                                style: TextStyle(
                                  fontFamily: "text",
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenSize.width * 0.028,
                                  color: AppColors.textColor4,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenSize.width * 0.04),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.boxColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search For dishes',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: screenSize.width * 0.62),
              child: Card(
                elevation: 1,
                child: Container(
                  width: screenSize.width * 0.29,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),

                  ),
                  child: Row(
                    children: [
                      Image.asset(_imageAsset),
                      SizedBox(width: screenSize.width * 0.01),
                      Expanded(
                        child: DropdownButton<String>(
                          value: _selectedOption,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedOption = newValue!;
                              _imageAsset = _selectedOption == 'veg'
                                  ? "assets/images/veg.png"
                                  : "assets/images/nonveg.png";
                            });
                          },
                          items: <String>['veg', 'non veg']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FoodItem(
              image: 'assets/images/pizza.png',
              name: 'Pepper Pizza',
              description: '5kg box of Pizza',
              key: UniqueKey(),
              price: 15,
              rating: 3.8,
            ),
            FoodItem(
              image: 'assets/images/pizza.png',
              name: 'Pepper Pizza',
              description: '5kg box of Pizza',
              key: UniqueKey(),
              price: 15,
              rating: 3.8,
            ),
            FoodItem(
              image: 'assets/images/pizza.png',
              name: 'Pepper Pizza',
              description: '5kg box of Pizza',
              key: UniqueKey(),
              price: 15,
              rating: 3.8,
            ),
            FoodItem(
              image: 'assets/images/pizza.png',
              name: 'Pepper Pizza',
              description: '5kg box of Pizza',
              key: UniqueKey(),
              price: 15,
              rating: 3.8,
            ),
          ],
        ),
      ),
    );
  }
}
