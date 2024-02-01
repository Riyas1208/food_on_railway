import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:food_on_railway/View/login_screen.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:70.0),
            child: Text("Profile",
              style: TextStyle(
                  fontFamily: "text1",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,

              ),),
          ),
          const SizedBox(height: 30),
          Positioned(
            top: 110,
            left: 169,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/images/profile.png'),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    bottom: 2,
                    child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        color: AppColors.textColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/edit-line.png',
                          color: Colors.white,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 388,
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Gilbert Jones',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'Gilbertjones01@gmail.com',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 80),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: AppColors.textColor5,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '121-224-7890',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/heart-line.png',
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    title: const Text('Favorites',
                      style: TextStyle(
                          fontFamily: "text",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                      ),),
                    trailing: Image.asset(
                      'assets/images/Vector.png',
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ),

                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/history-line.png',
                      width: 24,
                      height: 24,
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
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/group_order.png',
                      width: 24,
                      height: 24,
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
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/help.png',
                      width: 24,
                      height: 24,
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
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/info.png',
                      width: 24,
                      height: 24,
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
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/support.png',
                      width: 24,
                      height: 24,
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
                      width: 24,
                      height: 24,
                      color: Colors.black,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
            style: ElevatedButton.styleFrom(
            ),
            child: const Text('Logout',
            style: TextStyle(
              fontFamily: "text",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color:AppColors.textColor
            ),),
          ),
        ],
      ),
    );
  }
}