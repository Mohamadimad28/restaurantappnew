import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/foodmodle.dart';
import 'package:restaurantappnew/widget/favoritePost.dart';

class FavoriteScreen extends StatefulWidget {
  // Function fun;
   FavoriteScreen();

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 600,
          child: GridView.builder(
              itemCount:
                  Food.DataFood.where((element) => element.isLike).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 190,
              ),
              itemBuilder: (context, index) {
                return Favorite_Post(
                    Food.DataFood.where((element) => element.isLike)
                        .toList()[index]);
              }),
        ),
      ],
    );
  }
}
