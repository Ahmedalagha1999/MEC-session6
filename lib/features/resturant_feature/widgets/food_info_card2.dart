import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class FoodInfoCard2 extends StatelessWidget {
  bool? favIcon = false;
  FoodInfoCard2({super.key, this.favIcon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 4.0, // Adjust the elevation for shadow effect
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(18), // Keep the same border radius
          ),
          child: Container(
            color: Colors.white,
            width: 360,
            height: 240,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/Image block.png",
                  fit: BoxFit.fitWidth,
                  width: 357,
                  // height: ,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Crazy tacko",
                        style: cardHeadTextStyle,
                      ),
                      Text(
                        "Delicious tackos, appetizing snacks, fre...",
                        style: cardsubTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.fire_truck,
                            color: foodIconColor,
                            size: iconSize,
                          ),
                          Text("€3,00"),
                          Icon(
                            Icons.alarm,
                            color: foodIconColor,
                            size: iconSize,
                          ),
                          Text("40-50min"),
                          Icon(
                            Icons.star,
                            color: foodIconColor,
                            size: iconSize,
                          ),
                          Text("9,5")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          child: favIcon == null
              ? SizedBox()
              : Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.red),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
          right: 23,
          top: 12,
        )
      ],
    );
  }
}
