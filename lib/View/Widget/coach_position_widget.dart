import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class CoachPositionWidget extends StatefulWidget {
  @override
  _CoachPositionWidgetState createState() => _CoachPositionWidgetState();
}

class _CoachPositionWidgetState extends State<CoachPositionWidget> {
  List<String> _buttons = [
    'LOCO',
    '1 | EOG',
    '2 | EGN',
    '3 | GN',
    '4 | GEN',
    '5 | GEN',
    '6 | GEN',
    '7 | GEN',
    '8 | D1',
    '9 | C1',
    '10 | GEN',
    '11 | EOG',
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double buttonWidth = constraints.maxWidth / 4 - 8;
          double buttonHeight = buttonWidth / 2;
          return GridView.builder(
            itemCount: _buttons.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 2.0,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: buttonWidth,
                    height: buttonHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: _selectedIndex == index ? Colors.red : AppColors.boxColor6,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _buttons[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: "text1",
                          color: _selectedIndex == index ? Colors.red : AppColors.boxColor6,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
