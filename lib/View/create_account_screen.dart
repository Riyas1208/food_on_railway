import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/login_screen.dart';

class Create_Acc_Screen extends StatelessWidget {
  const Create_Acc_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.1,
            horizontal: MediaQuery.of(context).size.width * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.w600,
                  fontFamily: "text",
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Hello, welcome back to our account",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: AppColors.textColor1,
                  fontFamily: "text",
                ),
              ),
              const SizedBox(height: 150),
              TextFormField(
                cursorColor: AppColors.textColor1,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontFamily: 'text',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor1,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor1),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.width * 0.04,
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  prefixIcon: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 50,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.015),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.width * 0.08,
                        color: AppColors.textColor1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.06),
              TextFormField(
                cursorColor: AppColors.textColor1,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    fontFamily: 'text',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor1,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor1),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.width * 0.04,
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  prefixIcon: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 50,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.015),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.width * 0.08,
                        color: AppColors.textColor1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.12),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.textColor1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
                    child: Text('OR', style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontFamily: "text",
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.textColor1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.12),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.15,
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
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.07),
                    child: Image.asset(
                      'assets/images/google.png',
                      height: MediaQuery.of(context).size.width * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
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
              SizedBox(height: MediaQuery.of(context).size.width * 0.20),
              Container(
                height: MediaQuery.of(context).size.width * 0.15,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },

                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                        fontFamily: "text",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
