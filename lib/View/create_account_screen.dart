import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/login_screen.dart';

class Create_Acc_Screen extends StatelessWidget {
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
              const Text(
                "Create an Account",
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
              const SizedBox(height: 140),
              TextFormField(
                cursorColor: AppColors.textColor1,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'text',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor1,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor1),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  prefixIcon: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: 24,
                        height: 24,
                        color: AppColors.textColor1,
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 24,),
              TextFormField(
                cursorColor: AppColors.textColor1,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'text',
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor1,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor1),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  prefixIcon: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: 24,
                        height: 24,
                        color: AppColors.textColor1,
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 60,),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.textColor1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('OR',style: TextStyle(
                        fontSize: 12,
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

              const SizedBox(height: 24),
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
                    primary: Colors.white,
                    onPrimary: Colors.black,
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

              const SizedBox(height:170),
              Container(
                height: 60,
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
