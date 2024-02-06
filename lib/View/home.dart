import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/PNR_check_screen.dart';
import 'package:food_on_railway/View/check_platform_screen.dart';
import 'package:food_on_railway/View/group_order_screen.dart';
import 'package:food_on_railway/View/restuarent_search.dart';
import '../Model/category_itrm_model.dart';
import 'Widget/food_item_widget.dart';
import '../Model/image_with_text_model.dart';
import 'favourite-screen.dart';
import 'notification.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedCategory = 'Burger';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/profile.png"),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: "text1"
                        ),
                      ),
                      Text(
                        'Ummer Hashim',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: "text1"
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 120,),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FavoriteScreen()),
                        );
                      },
                      child: Container(
                        height: 31,
                        width: 31,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.secondaryColor,
                            width: 2.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: AppColors.secondaryColor,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotificationScreen()),
                        );
                      },
                      child: Container(
                        height: 31,
                        width: 31,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.secondaryColor,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            Center(
                              child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/notification.png',
                                  width: 14,
                                  height: 14,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                color: AppColors.boxColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search it here...',
                  hintStyle: const TextStyle(
                      color: AppColors.textColor4,
                      fontSize: 12,
                      fontFamily: "text1",
                      fontWeight: FontWeight.w400
                  ),
                  border: InputBorder.none,
                  prefixIcon: Image.asset(
                    "assets/images/search.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: [AppColors.boxColor2, AppColors.boxColor3],
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(

                      bottomRight: Radius.circular(16.0),
                    ),
                    child: Image.asset(
                      'assets/images/burger 1.png',
                      fit: BoxFit.fill,
                      width: 250,
                      height: 180,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Special Offer\nfor March',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: "text",
                        ),
                      ),
                      const SizedBox(height: 8,),
                      const Text(
                        'We are here with the best\ndesserts in town.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "text",
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        height: 24,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                            ),
                          ),
                          child: const Text('Buy Now',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 8.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "text",
                            ),),
                        ),
                      )
                      ,
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: AppColors.boxColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ORDER FOOD ON TRAIN',
                          style: TextStyle(
                            fontFamily: "text1",
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 41,
                              width: 51,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PNRStatus()));
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(color: AppColors.textColor),
                                  ),
                                  backgroundColor: AppColors.boxColor1,
                                ),
                                child: const Text(
                                  'Search by PNR',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 41,
                              width: 51,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RestuarentSearch()));
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(color: AppColors.textColor),
                                  ),
                                  backgroundColor: AppColors.boxColor1,
                                ),
                                child: const Text(
                                  'Search by Train',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        color: Colors.white,
                        height: 43,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'Enter PNR Number To Order',
                            hintStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontFamily: "text1",
                                color: Colors.black
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Container(
                                width: 90,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.textColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: const Text(
                                    'Submit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "text1",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 134,
              width: 354,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PNRStatus()));
                      },
                      child: const ImageWithText(
                        imagePath: 'assets/images/PNR.png',
                        text: '  PNR\nCHECK',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupOrderPage()));
                      },
                      child: const ImageWithText(
                        imagePath: 'assets/images/GroupOrder.png',
                        text: 'GROUP\nORDER',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckPlatform()));
                      },
                      child: const ImageWithText(
                        imagePath: 'assets/images/Platform.png',
                        text: 'PLATFORM\n LOCATOR',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle onTap for COACH POSITION
                      },
                      child: const ImageWithText(
                        imagePath: 'assets/images/CoachPosition.png',
                        text: '  COACH\nPOSITION',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Order You want',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: "text",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            height: 70.0,
            child: Container(

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(
                    imagePath: "assets/images/b.png",
                    title: 'Burger',
                    key: UniqueKey(),
                    isSelected: selectedCategory == 'Burger',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Burger';
                      });
                    },
                  ),
                  CategoryItem(
                    imagePath: "assets/images/p.png",
                    title: 'Pizza',
                    key: UniqueKey(),
                    isSelected: selectedCategory == 'Pizza',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Pizza';
                      });
                    },
                  ),
                  CategoryItem(
                    imagePath: "assets/images/s.png",
                    title: 'Sandwich',
                    key: UniqueKey(),
                    isSelected: selectedCategory == 'Sandwich',
                    onTap: () {
                      setState(() {
                        selectedCategory = 'Sandwich';
                      });
                    },
                  ),
                ],
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

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Text(
                  'Popular Meal Menu',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "text",
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    // Handle navigation here
                  },
                  child: const Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: AppColors.textColor4,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: AppColors.textColor4,
                      ),
                    ],
                  ),
                ),
              ],
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
        ],
      ),
    );
  }
}
