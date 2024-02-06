import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class PlatformLocationWidget extends StatelessWidget {
  final List<List<String>> data = [
    ['Station Name', ' Arr', 'Dept', ' Halt', 'Platform'],
    ['C Shivaji Mah T\n(CsmT)', '18:00', ' 18:15', '00:00', '     N/A'],
    ['C Shivaji Mah T\n(CsmT)', '18:00', ' 18:15', '00:00', '     N/A'],
    ['C Shivaji Mah T\n(CsmT)', '18:00', ' 18:15', '00:00', '     N/A'],
    ['C Shivaji Mah T\n(Csmt)', '18:00', ' 18:15', '00:00', '     N/A'],
  ];

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      textDirection: TextDirection.ltr,
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      textBaseline: TextBaseline.alphabetic,
      children: data
          .asMap()
          .entries
          .map((entry) {
        int rowIndex = entry.key;
        List<String> row = entry.value;
        return TableRow(
          children: row.map((item) {
            Color textColor = rowIndex == 0 ? Colors.black : AppColors.textColor4;
            if (item == '     N/A') {
              textColor = AppColors.textColor;
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                item,
                style: TextStyle(
                  fontWeight: rowIndex == 0 ? FontWeight.w500 : FontWeight.w400,
                  fontFamily: 'text1',
                  fontSize: rowIndex == 0 ? 12 : 10,
                  color: textColor,
                ),
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}
