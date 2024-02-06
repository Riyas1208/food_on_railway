import 'package:flutter/material.dart';
import 'package:food_on_railway/Model/restuarent_model.dart';
import 'package:food_on_railway/View/restuarent_screen.dart';


class FoodItemWidget extends StatelessWidget {
  final Restuarent foodItem;

  FoodItemWidget({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Restaurant(),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 4,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      foodItem.image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          foodItem.restaurant,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "text",
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.favorite,
                          size: 14,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Text(
                          foodItem.rating.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: "text",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          foodItem.deliveryTime,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: "text",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      foodItem.name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "text",
                        color: Colors.grey,
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

class FoodItemListWidget extends StatelessWidget {
  final List<Restuarent> foodItems;
  final String station;

  FoodItemListWidget({required this.foodItems, required this.station});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            station,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return FoodItemWidget(foodItem: foodItems[index]);
          },
        ),
      ],
    );
  }
}
