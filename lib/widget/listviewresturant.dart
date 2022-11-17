import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/resturant.dart';

class List_view_Resturant extends StatelessWidget {
  List_view_Resturant(this.data);

  Resturant data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 200,
        child: Row(
          children: [
            Container(
              width: 150,
              height: 200,
              child: Image.asset(
                data.image,
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
                          data.name,
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
                      data.description,
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
                          data.address,
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
                      data.numberPeople,
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
                          '${data.evaluation}',
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
    );
  }
}
