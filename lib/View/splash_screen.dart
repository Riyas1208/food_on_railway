import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'dart:async';
import 'package:food_on_railway/View/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onbording())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ AppColors.primaryColor,AppColors.secondaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/food_rail 1.png',
                    height: 132,
                    width: 132,
                  ),
                  const SizedBox(height: 12),
                  Image.asset('assets/images/for_logo 1.png',
                    height: 48,
                    width: 197,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}