import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'PNR_check_screen.dart';
import 'Widget/PNRcard_widget.dart';
import 'Widget/dotted_line_widget.dart';

class PNRStatusPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  PNRStatusPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.boxColor,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PNRStatus()), // Corrected navigation
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Back.png',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.0),
          child: Text(
            'Check PNR Status',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "text1",
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter PNR Number To Order',
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "text1",
                        color: Colors.black,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          width: 90,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.textColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "text1",
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of',
              style: TextStyle(
                color: AppColors.textColor4,
              ),
            ),
            const SizedBox(height: 35),
            ClipPath(
              clipper: PNRcardDesign(radius: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      color: AppColors.boxColor4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Tap here to Copy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: "text",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                'PNR 3452345345',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "text",
                                    color: Colors.black),
                              ),
                              const Spacer(),
                              Image.asset("assets/images/load.png")
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Text(
                                'Class - SL',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: "text",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'CHART NOT PREPARED',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: "text"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomPaint(
                    size: const Size(double.infinity, 1),
                    painter: DottedLine(),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Passenger Details',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                child: ListTile(
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${index + 1}. ',
                                              style: const TextStyle(
                                                fontFamily: "text",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: Colors.black,
                                              ),
                                            ),
                                            const TextSpan(
                                              text: 'Passenger',
                                              style: TextStyle(
                                                fontFamily: "text",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: AppColors.textColor6,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            'Booking Status',
                                            style: TextStyle(
                                                fontFamily: "text",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: AppColors.textColor6),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            'Current Status',
                                            style: TextStyle(
                                                fontFamily: "text",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: AppColors.textColor6),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            'Cnf Probability',
                                            style: TextStyle(
                                                fontFamily: "text",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11,
                                                color: AppColors.textColor6),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  subtitle: const Row(
                                    children: [
                                      Text(
                                        'WL/126 ',
                                        style: TextStyle(
                                            fontFamily: "text",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: AppColors.textColor7),
                                      ),
                                      SizedBox(
                                        width: 68,
                                      ),
                                      Text(
                                        '  WL/126',
                                        style: TextStyle(
                                            fontFamily: "text",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: AppColors.textColor7),
                                      ),
                                      SizedBox(
                                        width: 68,
                                      ),
                                      Text(
                                        'High 83%',
                                        style: TextStyle(
                                            fontFamily: "text",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: AppColors.textColor8),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
