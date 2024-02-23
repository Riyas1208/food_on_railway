import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'order_single.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key});

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
                Navigator.pop(context);
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
            'Order History',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "text1",
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderTracker()),
              );
            },
            child: const Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #150897',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "text3",
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '9:41 PM | 1 item, \$2.99',
                          style: TextStyle(color: AppColors.textColor4),
                        ),
                      ],
                    ),
                    Text(
                      'Processing',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderTracker()),
              );
            },
            child: const Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #150896',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "text3",
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '8:15 PM | 2 items, \$5.98',
                          style: TextStyle(color: AppColors.textColor4),
                        ),
                      ],
                    ),
                    Text(
                      'Completed',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderTracker()),
              );
            },
            child: const Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #150895',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "text3",
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '7:30 PM | 3 items, \$8.97',
                          style: TextStyle(color: AppColors.textColor4),
                        ),
                      ],
                    ),
                    Text(
                      'Completed',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
