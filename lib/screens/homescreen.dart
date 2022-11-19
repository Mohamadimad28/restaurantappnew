import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/fastest_delivery.dart';
import 'package:restaurantappnew/model/resturant.dart';
import 'package:restaurantappnew/screens/details_screen.dart';
import 'package:restaurantappnew/widget/gridviewfood.dart';
import 'package:restaurantappnew/widget/listviewresturant.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        const Text(
          'Fastest delivery',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 300,
          child: GridView.builder(
            itemCount: FastestDelivery.fastest.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return GridViewFood(FastestDelivery.fastest[index]);
            },
          ),
        ),
        const Text(
          'Resturants',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: Resturant.resturant.length,
              itemBuilder: (context, index) {
                return List_View_Resturant(Resturant.resturant[index]);
              }),
        )
      ],
    );
  }
}

/***/
/** Card(
    elevation: 5,
    child: Container(
    height: 200,
    child: Row(
    children: [
    Container(
    width: 150,
    height: 200,
    child: Image.asset(
    'assest/images/Resturant5.jpg',
    fit: BoxFit.cover,
    ),
    ),
    Container(
    width: 210,
    height: 200,
    child: Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 10,
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Text(
    'Bella Rosa',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    Spacer(),
    Text(
    'Open now',
    style: TextStyle(
    fontSize: 12,
    color: Color(0xFF497CE7),
    ),
    ),
    ],
    ),
    SizedBox(
    height: 10,
    ),
    Text(
    'Quick Bites - Curry Grill, Healthy Food',
    style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Color(0xFF8A8A8A)),
    ),
    SizedBox(
    height: 10,
    ),
    Row(
    children: [
    ImageIcon(
    AssetImage(
    'assest/imagesicons/Icon  Geo_Black.png',
    ),
    color: Colors.black,
    ),
    Text(
    '4 km - Kingston Road, London',
    style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    ),
    ),
    ],
    ),
    SizedBox(
    height: 10,
    ),
    Text(
    '25 - two people (approx)',
    style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Row(
    children: [
    Icon(
    Icons.star,
    color: Color(0xFF75A43C),
    ),
    SizedBox(
    width: 5,
    ),
    Text(
    '4.7',
    style: TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: Color(0xFF474747)),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ),*/
