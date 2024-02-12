import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/features/home_feature/widgets/food_info_card.dart';
import 'package:task/features/home_feature/widgets/popular_items.dart';
import 'package:task/features/resturant_feature/widgets/food_info_card2.dart';
import 'package:task/features/resturant_feature/widgets/food_prices_card.dart';

class ResturantScreen extends StatelessWidget {
  const ResturantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Container(
            child: Image.asset("assets/images/Icon.png"),
          ),
        ),
        title: Row(
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style, // Default text style
                children: <TextSpan>[
                  TextSpan(
                    text: 'Home, ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF111719),
                    ),
                  ),
                  TextSpan(
                    text: 'Jl. Soekarno Hatta  15A',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color(0xFF111719),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFFF83B01),
            )
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFFEDEDEF)),
            child: Icon(Icons.map),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFFEDEDEF)),
            child: Icon(Icons.tune),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Restaurants",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Color(0xFF0B0C17)),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Categories",
                  style: mainTitleStyle,
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFFFED8CC)),
                  child: Text(
                    "See all",
                    style: TextStyle(color: Color(0xFFF83B01)),
                  ),
                ),
              ]),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FoodPricescard(),
                    FoodPricescard(),
                    FoodPricescard(),
                    // ... other FoodInfoCard widgets ...
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "All restaurants",
                style: mainTitleStyle,
              ),
              ...List.generate(3, (index) => FoodInfoCard2())
              // SingleChildScrollView(
              //   scrollDirection: Axis.vertical,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       FoodInfoCard(),
              //       FoodInfoCard(),
              //       FoodInfoCard(),
              //       // ... other FoodInfoCard widgets ...
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
