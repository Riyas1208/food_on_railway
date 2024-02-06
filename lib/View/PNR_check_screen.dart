import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/PNR_chech_screen2.dart';
import 'package:food_on_railway/View/Widget/bottom_nav_widget.dart';

class PNRStatus extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

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
                  MaterialPageRoute(builder: (context) => MyHomePage()),
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PNRStatusPage()),
                              );
                            },
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
            const SizedBox(height: 16.0),
            const Text(
              'Recent',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PNRStatusPage()),
                      );
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              'OTP -> MAS',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: "text1",
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              'Allp Dhn Express(43244)',
                              style: TextStyle(
                                fontSize: 11,
                                fontFamily: "text1",
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/calender.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Fri 06 Oct',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "text1",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            leading: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/train7.png',
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(78.0, 0, 16.0, 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PNR - 42345434',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "text1",
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor4,
                                  ),
                                ),
                                Text(
                                  'PQWL 12, PQWL 13',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "text1",
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
