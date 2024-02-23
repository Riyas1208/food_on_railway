import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/Model/onboarding_model.dart';
import 'package:food_on_railway/View/login_screen.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.09),
                      child: Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Column(
                          children: [
                            Image.asset(
                              contents[i].image,
                              height: screenHeight * 0.3,
                              width: screenHeight * 0.3,
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Text(
                              contents[i].title,
                              style: TextStyle(
                                fontFamily: 'text',
                                fontSize: screenWidth * 0.05,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                contents[i].discription,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "text",
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.03,
                                  color: AppColors.textColor1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                        (index) => buildDot(index, context),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              Container(
                height: screenHeight * 0.08,
                margin: EdgeInsets.all(screenWidth * 0.08),
                width: double.infinity,
                child: TextButton(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "text",
                      color: Colors.white,
                      fontSize: screenWidth * 0.025,
                    ),
                  ),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginScreen(),
                        ),
                      );
                    }
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * 0.03,
            right: screenWidth * 0.04,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: "text",
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.03,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: currentIndex == index ? AppColors.textColor : AppColors.unselctedColor,
      ),
    );
  }
}
