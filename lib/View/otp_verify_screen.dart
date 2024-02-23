import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/create_account_screen.dart';

class OTPVerificationPage extends StatefulWidget {
  final String phoneNumber;
  List<TextEditingController> _otpControllers =
  List.generate(4, (index) => TextEditingController());

  OTPVerificationPage({Key? key, required this.phoneNumber}) : super(key: key);

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
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 0.05),
            const Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "text",
                color: Colors.black,
              ),
            ),
            SizedBox(height: screenSize.height * 0.05),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/Frame 3.png',
                height: screenSize.height * 0.32,
                width: screenSize.height * 0.32,
              ),
            ),
            SizedBox(height: screenSize.height * 0.07),
            const Text(
              "Enter OTP",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "text",
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "A 4-digit code has been sent to",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: "text",
                    color: AppColors.textColor1,
                  ),
                ),
                Text(
                  "${widget.phoneNumber}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: "text",
                    color: AppColors.textColor1,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    width: screenSize.width * 0.1,
                    height: screenSize.width * 0.1,
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
            SizedBox(height: screenSize.height * 0.02),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.07,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Create_Acc_Screen()),
                  );
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
                    color: Colors.white,
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
