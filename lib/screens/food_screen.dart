import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/foodmodle.dart';
import 'package:restaurantappnew/widget/favoritePost.dart';

class FoodScreen extends StatelessWidget {
  Food? food;
  // Function function;
  FoodScreen([this.food]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: GridView.builder(
          itemCount: Food.DataFood.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 190,
          ),
          itemBuilder: (context, index) {
            return Favorite_Post(Food.DataFood[index]);
          }),
    );
  }
}
/**Stack(
    children: [
    Image.asset(
    'assest/images/Resturant5.jpg',
    fit: BoxFit.cover,
    width: 190,
    height: 190,
    ),
    Container(
    width: 190,
    height: 190,
    color: Colors.black.withOpacity(0.2),
    child: Padding(
    padding: const EdgeInsets.only(left: 25, bottom: 15),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Mimosa Grill',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    ),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    '\$3.25',
    style: TextStyle(color: Colors.white,
    ),
    ),
    ],
    ),
    ),
    ),
    ],
    ),*/
