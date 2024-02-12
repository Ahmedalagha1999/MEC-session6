import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0, // Adjust the elevation for shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18), // Keep the same border radius
      ),
      child: Container(
        color: Colors.white,
        width: 135,
        height: 183,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Card.png",
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
