import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/cart_screen.dart';
import 'package:food_on_railway/View/home.dart';
import 'package:food_on_railway/View/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(key: PageStorageKey('HomeScreen')),
    const CartScreen(key: PageStorageKey('FavouritePage')),
    const Profile(key: PageStorageKey('CartScreen')),
  ];

  @override
  Widget build(BuildContext context) {
    double navItemWidth = MediaQuery.of(context).size.width / 5;
    double elevatedButtonWidth = MediaQuery.of(context).size.width / 4;

    return Scaffold(
      body: PageStorage(
        child: _pages[_currentIndex],
        bucket: PageStorageBucket(),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem('assets/images/home.png', 0, navItemWidth),
            _buildNavItem('assets/images/Cart.png', 1, navItemWidth),
            _buildNavItem('assets/images/user.png', 2, navItemWidth),
            _buildElevatedButton(elevatedButtonWidth),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String imagePath, int index, double width) {
    bool isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: width,
        height: MediaQuery.of(context).size.height * 0.07,
        child: Image.asset(
          imagePath,
          color: isSelected ? AppColors.textColor : Colors.black,
        ),
      ),
    );
  }

  Widget _buildElevatedButton(double width) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.height * 0.150,
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
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            const SizedBox(width: 5),
            const Text(
              'Railway services',
              style: TextStyle(
                fontSize: 10,
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
