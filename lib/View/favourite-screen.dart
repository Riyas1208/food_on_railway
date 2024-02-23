import 'package:flutter/material.dart';

import '../Model/Utils/app_colors.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
            'Favourite',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "text1",
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return const Row(
            children: [
              Expanded(
                child: FoodCard(
                  name: 'Chicken Burger',
                  price: '₹20.00',
                  ingredients: '100g chicken + tomato + cheese + lettuce',
                  rating: 3.8,
                  imageUrl: "assets/images/burger1.png",
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: FoodCard(
                  name: 'Chicken Burger',
                  price: '₹20.00',
                  ingredients: '100g chicken + tomato + cheese + lettuce',
                  rating: 3.8,
                  imageUrl: "assets/images/burger1.png",
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String name;
  final String price;
  final String ingredients;
  final double rating;
  final String imageUrl;

  const FoodCard({
    required this.name,
    required this.price,
    required this.ingredients,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: AppColors.secondaryColor, size: 18),
                    const SizedBox(width: 4),
                    Text(rating.toStringAsFixed(1)),
                    Spacer(),
                    const Icon(Icons.favorite, color: AppColors.secondaryColor, size: 16),
                  ],
                ),
              ),
            ),
            Image.asset(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(price,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.red
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                ingredients,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
