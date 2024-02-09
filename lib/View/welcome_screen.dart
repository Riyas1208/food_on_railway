import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/Model/onboarding_model.dart';
import 'package:food_on_railway/View/login_screen.dart';


class Onbording extends StatefulWidget {
  const Onbording({super.key});

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
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
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
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60.0),
                        child: Column(
                          children: [
                            Image.asset(
                              contents[i].image,
                              height: 256,
                              width: 256,
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              contents[i].title,
                              style: const TextStyle(
                                fontFamily: 'text',
                                fontSize: 25,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              contents[i].discription,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "text",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.textColor1,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                      (index) => buildDot(index, context),
                ),
              ),
              const SizedBox(height: 160,),
              Container(
                height: 60,
                margin: const EdgeInsets.all(40),
                width: double.infinity,
                child: TextButton(
                  child: const Text(
                     "Next",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "text",
                    color: Colors.white,
                    fontSize: 14
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
            top: 30,
            right: 20,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: "text",
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
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
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: currentIndex == index ? AppColors.textColor : AppColors.unselctedColor,
      ),
    );
  }
}

