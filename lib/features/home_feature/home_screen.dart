import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:task/constants.dart';
import 'package:task/features/home_feature/widgets/food_info_card.dart';
import 'package:task/features/home_feature/widgets/popular_items.dart';
import 'package:task/features/resturant_feature/resturant_screen.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

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
                  style:
                      DefaultTextStyle.of(context).style, // Default text style
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
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 184.0,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: [
                'assets/images/Banner.png',
                'assets/images/Banner.png',
                'assets/images/Banner.png',
                // Add more image URLs here
              ].map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 184,
                      child: Image.asset(url, fit: BoxFit.fill),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: 3, // Replace with the number of images
                    position: _current.toDouble(),
                    decorator: DotsDecorator(
                      activeColor: Theme.of(context).primaryColor,
                      size: const Size.square(9.0),
                      activeSize: const Size(9.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fastest delivery 🔥",
                    style: mainTitleStyle,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xFFFED8CC)),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Color(0xFFF83B01)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 18),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FoodInfoCard(),
                  FoodInfoCard(),
                  FoodInfoCard(),
                  // ... other FoodInfoCard widgets ...
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular items 👏",
                    style: mainTitleStyle,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xFFFED8CC)),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Color(0xFFF83B01)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 18),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PopularItems(),
                  PopularItems(),
                  PopularItems(),
                  // ... other FoodInfoCard widgets ...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
