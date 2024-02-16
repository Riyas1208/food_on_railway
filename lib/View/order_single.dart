import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/Utils/app_colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/X.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order #150897',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "text3",
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    height: 1
                  ),
                ),
                Text(
                  '9:41 P.M | 1 item, Rs 329',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "text3",
                      fontWeight: FontWeight.w300,
                      color: AppColors.textColor4,
                      height: 1
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            const SizedBox(
              height: 312,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(10.8011366, 76.1796676),
                  zoom: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Arriving in 10 mins',
                            style: TextStyle(
                                fontFamily: "text4",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),),
                          const Spacer(),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.textColor
                            ),
                            child: TextButton(onPressed: (){

                            },
                                child: const Center(child: Text("On Time",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                  ),
                                ))
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 15,
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: const LinearProgressIndicator(
                            value: 0.06,
                            color: AppColors.secondaryColor,
                            backgroundColor: AppColors.unselctedColor,
                          ),
                        ),
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('to PNR no: 1234567890',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: "text3",
                                color: AppColors.textColor4
                            ),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.boxColor5
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children:[
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Image.asset('assets/images/meat&fish.png',
                                    height: 56,
                                    width: 62,),
                                  ),
                                  const SizedBox(width: 10,),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Meat and fish',
                                      style: TextStyle(
                                        fontFamily: "text5",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                      ),),
                                      Row(
                                        children: [
                                          Text('ponnani,Malappuram',
                                          style: TextStyle(
                                            color: AppColors.textColor4,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            fontFamily: "text5"
                                          ),),
                                          SizedBox(width: 130,),
                                          Text('CoD',
                                          style: TextStyle(
                                            color: AppColors.textColor10,
                                            fontFamily: "text5",
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('45 Minutes',
                                              style: TextStyle(
                                                  color: AppColors.textColor4,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  fontFamily: "text5"
                                              )),
                                          SizedBox(width: 142,),
                                          Text('2022-03-04',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            fontFamily: "text5",
                                            color: AppColors.textColor4
                                          ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          const Divider(
                            height: 1,
                            thickness: 2,
                          ),
                          const ListTile(
                            title: Text('1 x Fresh chicken (1 kg)',
                            style: TextStyle(
                              fontFamily: "text5",
                              fontSize: 13,
                              fontWeight: FontWeight.w600
                            ),),
                          ),
                          const SizedBox(height: 2,),
                          const Divider(
                            height: 1,
                            thickness: 2,
                          ),
                          const SizedBox(height: 8,),
                          const Row(
                            children: [
                              Text('Delivery Charge',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                fontFamily: "text5",
                                color: AppColors.textColor4
                              ),),
                              SizedBox(width: 220,),
                              Text('₹0.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    fontFamily: "text5",
                                    color: Colors.black
                                ),),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('Taxes and Charges',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    fontFamily: "text5",
                                    color: AppColors.textColor4
                                ),),
                              SizedBox(width: 204,),
                              Text('₹0.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    fontFamily: "text5",
                                    color: Colors.black
                                ),),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('Grand total',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    fontFamily: "text5",
                                    color: AppColors.textColor4
                                ),),
                              SizedBox(width: 237,),
                              Text('₹170',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    fontFamily: "text5",
                                    color: Colors.black
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 115,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              const Text('Avoid the hassle of cash\nand change',
                              style: TextStyle(
                                fontFamily: "text3",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black
                              ),),
                              const Spacer(),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.textColor
                                ),
                                child: TextButton(onPressed: (){

                                },
                                    child: const Center(child: Text("Pay Online",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10
                                      ),
                                    ))
                                ),
                              )
                            ],
                          ),
                          const Text('Rs 329 | 1 item',
                          style: TextStyle(
                            color: AppColors.textColor4,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: "text3",
                            height: 1
                          ),),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/jairamFoods.png"),
                              const SizedBox(width: 20,),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(text: 'Jairam Foods',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "text3",
                                          height: 1.5
                                        )),
                                    TextSpan(text: ' is preparing your\norder',
                                        style: TextStyle(
                                            fontFamily: "text3",
                                            fontWeight: FontWeight.w300,
                                            height: 1.5
                                        )),
                                  ],
                                ),
                              ),

                              const Spacer(),
                              Image.asset("assets/images/phone.png"),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/raghavSingh.png"),
                              const SizedBox(width: 20,),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Raghav Singh',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "text3",
                                          height: 1.5
                                        )),
                                    TextSpan(text: ' is your delivery\npartner',
                                    style: TextStyle(
                                      fontFamily: "text3",
                                      fontWeight: FontWeight.w300,
                                      height: 1.5
                                    )),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Image.asset("assets/images/phone.png"),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              const Text('Add delivery instructions',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                fontFamily: "text3"
                              ),),
                              const Spacer(),
                              Image.asset("assets/images/Add.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Container(
                    height: 60,
                    width: 350,
                    child: TextButton(
                      onPressed: () {

                      },
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.textColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Cancel Order",
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
          ],
        ),
      ),
    );
  }
}
