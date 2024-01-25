import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class OTPVerificationPage extends StatefulWidget {
  final String phoneNumber;
  List<TextEditingController> _otpControllers =
  List.generate(4, (index) => TextEditingController());

  OTPVerificationPage({required this.phoneNumber});

  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            const Text(
              "OTP Verification",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: "text",
                  color: Colors.black),
            ),
            const SizedBox(height: 80),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/Frame 3.png',
                height: 258,
                width: 256,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Enter OTP",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "text",
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Text(
              "A 4-digit code has been sent to",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "text",
                  color: AppColors.textColor1),
            ),
            Text(
              "${widget.phoneNumber}",
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "text",
                  color: AppColors.textColor1),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.boxColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: widget._otpControllers[i],
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      focusNode: _focusNodes[i],
                      onChanged: (value) {
                        if (value.length == 1 && i < 3) {
                          FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
                        } else if (value.isEmpty && i > 0) {
                          FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
                        }
                      },
                      decoration: const InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 60),
            Container(
              height: 60,
              width: double.infinity,
              child: TextButton(
                onPressed: () {

                },
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(
                      fontFamily: "text",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _verifyOTP() {
    String enteredOTP = "";
    for (int i = 0; i < 4; i++) {
      enteredOTP += widget._otpControllers[i].text;
    }
    print("Entered OTP: $enteredOTP");

  }
}
