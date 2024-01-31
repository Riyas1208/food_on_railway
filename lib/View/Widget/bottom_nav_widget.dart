import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/cart_screen.dart';
import 'package:food_on_railway/View/home.dart';
import 'package:food_on_railway/View/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(key: PageStorageKey('HomeScreen')),
    const Cart(key: PageStorageKey('FavouritePage')),
    const Profile(key: PageStorageKey('CartScreen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: _pages[_currentIndex],
        bucket: PageStorageBucket(),
      ),
      bottomNavigationBar: Container(
        height: 69,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem('assets/images/home.png', 0),
            _buildNavItem('assets/images/Cart.png', 1),
            _buildNavItem('assets/images/user.png', 2),
            _buildElevatedButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String imagePath, int index) {
    bool isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: 70,
        height: 60,
        child: Image.asset(
          imagePath,
          width: 80,
          height: 80,
          color: isSelected ? AppColors.textColor : Colors.black,
        ),
      ),
    );
  }

  Widget _buildElevatedButton() {
    return Container(
      height: 31,
      width: 117,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.textColor
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/train.png',
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            const Text(
              'Railway services',
              style: TextStyle(
                fontSize: 7,
                fontFamily: "text",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

}


