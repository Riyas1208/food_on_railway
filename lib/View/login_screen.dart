import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/Widget/bottom_nav_widget.dart';
import 'package:food_on_railway/View/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.1,
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Login Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "text",
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Hello, welcome back to our account",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textColor1,
                fontFamily: "text",
              ),
            ),
            const SizedBox(height: 80),
            TextFormField(
              cursorColor: AppColors.textColor1,
              decoration: const InputDecoration(
                hintText: 'Mobile Number',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'text',
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor1,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textColor1),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textColor1),
                ),
                prefixIcon: CountryCodePicker(
                  padding: EdgeInsets.only(left: 1.0),
                  initialSelection: 'IN',
                  flagWidth: 30,
                  hideMainText: true,
                  showDropDownButton: true,
                  flagDecoration: BoxDecoration(shape: BoxShape.circle),
                ),
                contentPadding: EdgeInsets.only(top: 15.0),
                isCollapsed: true,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 330,
                maxHeight: double.infinity,
              ),
              child: TextFormField(
                textAlign: TextAlign.left,
                cursorColor: AppColors.textColor1,
                decoration: InputDecoration(
                  hintText: '               Password',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'text',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor1,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor1),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 25.0),
                  prefixIcon: Image.asset(
                    'assets/images/password.png',
                    width: 24,
                    height: 24,
                    color: AppColors.textColor1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "text",
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.textColor1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('or'),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.textColor1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: 356,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
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
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                label: const Text(
                  'Login with Google',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "text"),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Not registered yet?",
                  style: TextStyle(
                      fontFamily: "text",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor3),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: const Text(
                    'Create an account',
                    style: TextStyle(
                        fontFamily: "text",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.textColor,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      fontFamily: "text",
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
