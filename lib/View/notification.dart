import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

import '../Model/notification_model.dart';

class NotificationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
            'Notification',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "text1",
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationBubble(
              imageUrl: "assets/images/notify.png",
              message: "Meetup scheduled on 'Art for Everyone' Community",
              date: "16/12/2023 11 :00 PM",
            ),
            NotificationBubble(
              imageUrl: "assets/images/notify.png",
              message: "Meetup scheduled on 'Art for Everyone' Community",
              date: "16/12/2023 11 :00 PM",
            ),
            NotificationBubble(
              imageUrl: "assets/images/notify.png",
              message: "Meetup scheduled on 'Art for Everyone' Community",
              date: "16/12/2023 11 :00 PM",
            ),
            NotificationBubble(
              imageUrl: "assets/images/notify.png",
              message: "Meetup scheduled on 'Art for Everyone' Community",
              date: "16/12/2023 11 :00 PM",
            ),
          ],
        ),
      ),
    );
  }
}