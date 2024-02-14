import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/favourite-screen.dart';
import 'package:food_on_railway/View/group_order_screen.dart';
import 'package:food_on_railway/View/login_screen.dart';
import 'package:food_on_railway/View/order_history.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.04),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      fontSize: screenSize.width * 0.05,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.14),
                Padding(
                  padding: EdgeInsets.all(screenSize.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.95,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(screenSize.width * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Gilbert Jones',
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Gilbertjones01@gmail.com',
                                      style: TextStyle(
                                        fontSize: screenSize.width * 0.04,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: screenSize.width * 0.2),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: AppColors.textColor5,
                                          fontSize: screenSize.width * 0.04,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '121-224-7890',
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.04,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.005),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/heart-line.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Favorites',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: screenSize.width * 0.035,
                            ),
                          ),
                          trailing: Image.asset(
                            'assets/images/Vector.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavoriteScreen()));
                          },
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/history-line.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          title: const Text('Order History',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                          trailing: Image.asset(
                            'assets/images/Vector.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderHistoryScreen()));
                          },
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/group_order.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          title: const Text('Group Order',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                          trailing: Image.asset(
                            'assets/images/Vector.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const GroupOrderPage()));
                          },
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/help.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          title: const Text('Help',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                          trailing: Image.asset(
                            'assets/images/Vector.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/info.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          title: const Text('About Us',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                          trailing: Image.asset(
                            'assets/images/Vector.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.025),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/support.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          title: const Text('Support',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                          trailing: Image.asset(
                            'assets/images/Vector.png',
                            width: screenSize.width * 0.08,
                            height: screenSize.width * 0.08,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenSize.width * 0.04),
                            ),
                            backgroundColor: AppColors.textColor,
                          ),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontFamily: "text",
                              fontWeight: FontWeight.w400,
                              fontSize: screenSize.width * 0.035,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: screenSize.height * 0.09,
              left: screenSize.width * 0.39,
              child: CircleAvatar(
                radius: screenSize.width * 0.14,
                backgroundImage: const AssetImage('assets/images/profile.png'),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 2,
                      child: Container(
                        width: screenSize.width * 0.10,
                        height: screenSize.width * 0.10,
                        decoration: const BoxDecoration(
                          color: AppColors.textColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/edit-line.png',
                            color: Colors.white,
                            width: screenSize.width * 0.09,
                            height: screenSize.width * 0.09,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
