import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/login_screen.dart';

class Create_Acc_Screen extends StatelessWidget {
  const Create_Acc_Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                const Text(
                  "Create an Account",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "text",
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Hello, welcome back to our account",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: AppColors.textColor1,
                    fontFamily: "text",
                  ),
                ),
                const SizedBox(height: 80),
                TextFormField(
                  cursorColor: AppColors.textColor1,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'text',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor1,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textColor1),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: 30.0,
                        height: 30.0,
                        color: AppColors.textColor1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  cursorColor: AppColors.textColor1,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'text',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor1,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textColor1),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: 30.0,
                        height: 30.0,
                        color: AppColors.textColor1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.textColor1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: "text",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.textColor1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Handle Google login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Image.asset(
                        'assets/images/google.png',
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                    label: const Text(
                      'Login with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: "text",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontFamily: "text",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
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
