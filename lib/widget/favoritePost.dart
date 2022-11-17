import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/foodmodle.dart';

class Favorite_Post extends StatefulWidget {
  Food data;
  // Function fun;

  Favorite_Post(this.data,);

  @override
  State<Favorite_Post> createState() => _Favorite_PostState();
}

class _Favorite_PostState extends State<Favorite_Post> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.data.image,
          fit: BoxFit.cover,
          width: 200,
          height: 190,
        ),
        Container(
          width: 200,
          height: 190,
          color: Colors.black.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.name,
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
                  widget.data.price,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 150,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: IconButton(
              onPressed: () {
                widget.data.isLike = ! widget.data.isLike;
                // widget.fun(widget.data);
                setState(() {});
              },
              icon: widget.data.isLike
                  ? Image.asset('assest/images/heart.png')
                  : Image.asset('assest/images/heart1.png'),
            ),
          ),
        ),
      ],
    );
  }
}
