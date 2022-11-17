import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/fastest_delivery.dart';

class GridViewFood extends StatelessWidget {
  GridViewFood(this.data);

  FastestDelivery data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 310,
          child: Image.asset(
            data.image,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    data.description,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF8A8A8A)),
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
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF474747)),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Open new',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF497CE7),
                    ),
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
                        "${data.evaluation}",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF474747)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/***/
