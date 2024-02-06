import 'package:flutter/material.dart';
import 'package:food_on_railway/View/order_placed.dart';
import '../Model/Utils/app_colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String? paymentMethod; // State variable to hold the selected payment method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Text(
                "Cart",
                style: TextStyle(
                  fontFamily: "text2",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(4, (index) {
                  return Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/burger.png',
                              width: 50,
                              height: 70,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken Burger',
                                style: TextStyle(
                                  fontFamily: "text",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Burger Factory LTD',
                                style: TextStyle(
                                  fontFamily: "text",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textColor4,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '₹20',
                                style: TextStyle(
                                  fontFamily: "text",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const SizedBox(height: 8),
                              InkWell(
                                onTap: () {
                                  // Your delete logic here
                                },
                                child: const Text(
                                  'Delete',
                                  style: TextStyle(
                                    fontFamily: "text",
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textColor,
                                    fontSize: 10,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColors.clipColor,
                                    ),
                                    child: Center(
                                      child: IconButton(
                                        icon: const Icon(Icons.remove, color: AppColors.textColor),
                                        onPressed: () {
                                          // Your logic for decreasing quantity
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text('1'),
                                  const SizedBox(width: 8),
                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColors.textColor,
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.add, color: Colors.white),
                                      onPressed: () {
                                        // Your logic for increasing quantity
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 12,),
            TextButton(
              onPressed: () {
                // Your logic for adding items
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.secondaryColor,
                        width: 2, // Border width
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Your logic for adding items
                      },
                      child: const Icon(
                        Icons.add,
                        color: AppColors.secondaryColor,
                        size: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Add',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              height: 400,
              padding: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sub-Total',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text('₹100'),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text('Delivery Charge '),
                            Spacer(),
                            Text('₹10'),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text('Discount'),
                            Spacer(),
                            Text('₹10'),
                          ],
                        ),
                        Divider(
                          color: Colors.grey, // You can adjust the color as needed
                          thickness: 0.8,
                        ),
                        Row(
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text('₹110'),
                          ],
                        ),
                        Divider(
                          color: Colors.grey, // You can adjust the color as needed
                          thickness: 0.8,
                        ),
                        // Radio buttons for payment options
                        Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 'Cash on Delivery',
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value;
                                    });
                                  },
                                  groupValue: paymentMethod, // Set the selected payment method
                                  activeColor: Colors.red, // Set the color when selected
                                ),
                                Text('Cash on Delivery'),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 'Pay on Delivery',
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value;
                                    });
                                  },
                                  groupValue: paymentMethod,
                                  activeColor: Colors.red,
                                ),
                                Text('Pay on Delivery'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Container(
                          height: 60,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPlaced()));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.textColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              "Place My Order",
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
