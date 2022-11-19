import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/resturant.dart';

class List_View_Resturant extends StatelessWidget {
  List_View_Resturant(this.data);

  Resturant data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
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
            Expanded(
              child: Container(
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
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'Open now',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF497CE7),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.description,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF8A8A8A)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const ImageIcon(
                            AssetImage(
                              'assest/imagesicons/Icon  Geo_Black.png',
                            ),
                            color: Colors.black,
                          ),
                          Text(
                            data.address,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.numberPeople,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xFF75A43C),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${data.evaluation}',
                            style: const TextStyle(
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
            ),
          ],
        ),
      ),
    );
  }
}
