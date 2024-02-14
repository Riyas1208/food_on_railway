import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';

class ProductSingle extends StatelessWidget {
  const ProductSingle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: screenSize.width,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Image.png",
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: screenSize.height * 0.05,
                  left: screenSize.width * 0.8,
                  child: Stack(
                    children: [
                      Container(
                        height: screenSize.width * 0.12,
                        width: screenSize.width * 0.12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                      ),
                      Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: AppColors.secondaryColor,
                            size: screenSize.width * 0.06,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
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
                        decoration: BoxDecoration(
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
                const Text(
                  'Burger Bistro',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: "text2",
                      color: Colors.black
                  ),
                ),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    Image.asset("assets/images/restu.png"),
                    const SizedBox(width: 4,),
                    const Text(
                      'Rose Garden',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "text2"
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Image.asset('assets/images/Star 1.png',),
                    const SizedBox(width: 4,),
                    const Text('4.7'),
                    const SizedBox(width: 16.0),
                    Image.asset('assets/images/Delivery.png',),
                    const SizedBox(width: 4,),
                    const Text('Free'),
                    const SizedBox(width: 16.0),
                    Image.asset('assets/images/Clock.png',),
                    const SizedBox(width: 4,),
                    const Text('20 min'),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
                  style: TextStyle(
                      color: AppColors.textColor9,
                      fontFamily: "text2",
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),
                ),
                const SizedBox(height: 10.0),
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
                                  Image.asset('assets/images/nonveg.png', width: screenSize.width * 0.12, height: screenSize.width * 0.12,),
                                  const SizedBox(width: 8),
                                  const Text('Qtr', style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 68),
                                  const Text('₹130', style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  )),
                                  const SizedBox(width: 18),
                                  Stack(
                                    children: [
                                      const Text('₹130', style: TextStyle(
                                        color: AppColors.textColor4,
                                        fontWeight: FontWeight.bold,

                                      )),
                                      Positioned(
                                        top: 8.0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1,
                                          color: AppColors.textColor4,
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),
                              Container(
                                height: screenSize.height * 0.05,
                                width: screenSize.width * 0.25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: AppColors.unselctedColor,
                                  borderRadius: BorderRadius.circular(screenSize.width * 0.04),
                                  border: Border.all(
                                    color: AppColors.textColor,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 8,),
                                    ClipOval(
                                      child: Material(
                                        color: Colors.black,
                                        child: InkWell(
                                          onTap: () {
                                          },
                                          child: Container(
                                            width: screenSize.width * 0.06,
                                            height: screenSize.width * 0.06,
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8,),
                                    const Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8,),
                                    ClipOval(
                                      child: Material(
                                        color: Colors.black,
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Container(
                                            height: screenSize.width * 0.06,
                                            width: screenSize.width * 0.06,
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/nonveg.png', width: screenSize.width * 0.12, height: screenSize.width * 0.12,),
                                  const SizedBox(width: 8),
                                  const Text('Qtr', style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 68),
                                  const Text('₹130', style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  )),
                                  const SizedBox(width: 18),
                                  Stack(
                                    children: [
                                      const Text('₹130', style: TextStyle(
                                        color: AppColors.textColor4,
                                        fontWeight: FontWeight.bold,

                                      )),
                                      Positioned(
                                        top: 8.0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 1,
                                          color: AppColors.textColor4,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: screenSize.height * 0.05,
                                width: screenSize.width * 0.25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.width * 0.03),
                                    color: AppColors.textColor
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text("ADD",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),)
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Item total',
                          style: TextStyle(
                              color: AppColors.textColor4,
                              fontSize: 12
                          ),),
                        Text('₹130',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery fee',
                          style: TextStyle(
                              color: AppColors.textColor4,
                              fontSize: 12
                          ),),
                        Text('₹130',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Taxes and charges',
                          style: TextStyle(
                              color: AppColors.textColor4,
                              fontSize: 12
                          ),),
                        Text('₹130',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.9,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub total',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '₹130',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
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
              child: const Text(
                "Add cart",
                style: TextStyle(
                    fontFamily: "text",
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
