import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/otp_verify_screen.dart';

class SignUpScreen extends StatelessWidget {
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
              const SizedBox(height: 150),
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
              SizedBox(height: 120,),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTPVerificationPage(phoneNumber: "")),
                    );
                  },

                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Get OTP",
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
