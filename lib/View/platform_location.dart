import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/Model/tab_item_model.dart';
import 'package:food_on_railway/View/check_platform_screen.dart';

import 'Widget/coach_position_widget.dart';
import 'Widget/platform_location_widget.dart';
import 'Widget/time_table_widget.dart';

class PlatformLocation extends StatefulWidget {
  const PlatformLocation({Key? key}) : super(key: key);

  @override
  _PlatformLocationState createState() => _PlatformLocationState();
}

class _PlatformLocationState extends State<PlatformLocation> {
  String selectedCategory = 'TIME TABLE';

  @override
  void initState() {
    super.initState();
    selectedCategory = 'TIME TABLE';
  }

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
                  MaterialPageRoute(builder: (context) => CheckPlatform()),
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
        title: const Text(
          'Check Platform location',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: "text1",
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TabItem(
                  title: 'TIME TABLE',
                  isSelected: selectedCategory == 'TIME TABLE',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'TIME TABLE';
                    });
                  },
                ),
                TabItem(
                  title: ' COACH\nPOSITION',
                  isSelected: selectedCategory == 'COACH\nPOSITION',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'COACH\nPOSITION';
                    });
                  },
                ),
                TabItem(
                  title: 'PLATFORM\nLOCATION',
                  isSelected: selectedCategory == 'PLATFORM\nLOCATION',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'PLATFORM\nLOCATION';
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: selectedCategory == 'TIME TABLE'
                  ? TimeTableWidget()
                  : selectedCategory == 'COACH\nPOSITION'
                  ? CoachPositionWidget()
                  : selectedCategory == 'PLATFORM\nLOCATION'
                  ? PlatformLocationWidget()
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
