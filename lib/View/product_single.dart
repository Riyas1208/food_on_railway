import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class ProductSingle extends StatelessWidget {
  const ProductSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: screenSize.height * 0.4,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Image.png",
                    fit: BoxFit.fitWidth,
                    width: screenSize.width,
                    height: screenSize.height * 0.4,
                  ),
                  Positioned(
                    top: screenSize.height * 0.05,
                    left: screenSize.width * 0.8,
                    child: Container(
                      height: screenSize.width * 0.12,
                      width: screenSize.width * 0.12,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: AppColors.secondaryColor,
                          size: screenSize.width * 0.06,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenSize.height * 0.04,
                    left: screenSize.width * 0.08,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: screenSize.width * 0.12,
                          width: screenSize.width * 0.12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            'assets/images/Back.png',
                            width: screenSize.width * 0.1,
                            height: screenSize.width * 0.1,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Burger Bistro',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.06,
                      fontWeight: FontWeight.w700,
                      fontFamily: "text2",
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenSize.width * 0.01),
                  Row(
                    children: [
                      Image.asset("assets/images/restu.png"),
                      SizedBox(width: screenSize.width * 0.01),
                      Text(
                        'Rose Garden',
                        style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "text2",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.width * 0.02),
                  Row(
                    children: [
                      Image.asset('assets/images/Star 1.png'),
                      SizedBox(width: screenSize.width * 0.01),
                      const Text('4.7'),
                      SizedBox(width: screenSize.width * 0.04),
                      Image.asset('assets/images/Delivery.png'),
                      SizedBox(width: screenSize.width * 0.01),
                      const Text('Free'),
                      SizedBox(width: screenSize.width * 0.04),
                      Image.asset('assets/images/Clock.png'),
                      SizedBox(width: screenSize.width * 0.01),
                      const Text('20 min'),
                    ],
                  ),
                  SizedBox(height: screenSize.width * 0.02),
                  Text(
                    'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
                    style: TextStyle(
                      color: AppColors.textColor9,
                      fontFamily: "text2",
                      fontWeight: FontWeight.w400,
                      fontSize: screenSize.width * 0.04,
                    ),
                  ),
                  SizedBox(height: screenSize.width * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.boxColor,
                      borderRadius: BorderRadius.circular(screenSize.width * 0.05),
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/nonveg.png', width: screenSize.width * 0.12, height: screenSize.width * 0.12),
                                    SizedBox(width: screenSize.width * 0.01),
                                    const Text('Qtr', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: screenSize.width * 0.17),
                                    const Text(
                                      '₹130',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: screenSize.width * 0.04),
                                    Stack(
                                      children: [
                                        const Text(
                                          '₹130',
                                          style: TextStyle(
                                            color: AppColors.textColor4,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.width * 0.01,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            height: 1,
                                            color: AppColors.textColor4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: screenSize.height * 0.04,
                                  width: screenSize.width * 0.20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: AppColors.unselctedColor,
                                    borderRadius: BorderRadius.circular(screenSize.width * 0.03),
                                    border: Border.all(
                                      color: AppColors.textColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: screenSize.width * 0.01),
                                      ClipOval(
                                        child: Material(
                                          color: Colors.black,
                                          child: InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              width: screenSize.width * 0.06,
                                              height: screenSize.width * 0.06,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: screenSize.width * 0.04,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: screenSize.width * 0.01),
                                      Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenSize.width * 0.04,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: screenSize.width * 0.01),
                                      ClipOval(
                                        child: Material(
                                          color: Colors.black,
                                          child: InkWell(
                                            onTap: () {},
                                            child: SizedBox(
                                              height: screenSize.width * 0.06,
                                              width: screenSize.width * 0.06,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: screenSize.width * 0.04,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: screenSize.width * 0.005),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.width * 0.015),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/nonveg.png', width: screenSize.width * 0.12, height: screenSize.width * 0.12),
                                    SizedBox(width: screenSize.width * 0.01),
                                    const Text('Qtr', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: screenSize.width * 0.17),
                                    const Text(
                                      '₹130',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: screenSize.width * 0.04),
                                    Stack(
                                      children: [
                                        const Text(
                                          '₹130',
                                          style: TextStyle(
                                            color: AppColors.textColor4,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.width * 0.01,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            height: 1,
                                            color: AppColors.textColor4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: screenSize.height * 0.04,
                                  width: screenSize.width * 0.20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.width * 0.03),
                                    color: AppColors.textColor,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "ADD",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: "text5",
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.width * 0.02),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Item total',
                            style: TextStyle(
                              color: AppColors.textColor4,
                              fontSize: screenSize.width * 0.03,
                            ),
                          ),
                          Text(
                            '₹130',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenSize.width * 0.03,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.width * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery fee',
                            style: TextStyle(
                              color: AppColors.textColor4,
                              fontSize: screenSize.width * 0.03,
                            ),
                          ),
                          Text(
                            '₹130',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenSize.width * 0.03,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.width * 0.005),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Taxes and charges',
                            style: TextStyle(
                              color: AppColors.textColor4,
                              fontSize: screenSize.width * 0.03,
                            ),
                          ),
                          Text(
                            '₹130',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenSize.width * 0.03,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub total',
                        style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹130',
                        style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.width * 0.05),
                  SizedBox(
                    height: screenSize.height * 0.07,
                    width: screenSize.width * 0.85,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.textColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenSize.width * 0.04),
                        ),
                      ),
                      child: Text(
                        "Add cart",
                        style: TextStyle(
                          fontFamily: "text",
                          fontSize: screenSize.width * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
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
