import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/Model/tab_item_model.dart';
import 'package:food_on_railway/View/check_platform_screen.dart';

import 'Widget/coach_position_widget.dart';
import 'Widget/platform_location_widget.dart';
import 'Widget/time_table_widget.dart';

class PlatformLocation extends StatefulWidget {
  const PlatformLocation({super.key});

  @override
  _PlatformLocationState createState() => _PlatformLocationState();
}
class _PlatformLocationState extends State<PlatformLocation> {
  String selectedCategory = 'Time Table';

  @override
  void initState() {
    super.initState();
    selectedCategory = 'Time Table';
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
          Container(
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TabItem(
                  title: 'Time Table',
                  isSelected: selectedCategory == 'Time Table',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Time Table';
                    });
                  },
                ),
                TabItem(
                  title: ' Coach\nPosition',
                  isSelected: selectedCategory == 'Coach\nPosition',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Coach\nPosition';
                    });
                  },
                ),
                TabItem(
                  title: 'Platform\nLocation',
                  isSelected: selectedCategory == 'Platform\nLocation',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Platform\nLocation';
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: selectedCategory == 'Time Table'
                  ? TimeTableWidget()
                  : selectedCategory == 'Coach\nPosition'
                  ? CoachPositionWidget()
                  : selectedCategory == 'Platform\nLocation'
                  ? PlatformLocationWidget()
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
