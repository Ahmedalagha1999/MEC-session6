import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class FoodInfoCard extends StatelessWidget {
  const FoodInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0, // Adjust the elevation for shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18), // Keep the same border radius
      ),
      child: Container(
        color: Colors.white,
        width: 271,
        height: 209,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/Image block.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
    );
  }
}
