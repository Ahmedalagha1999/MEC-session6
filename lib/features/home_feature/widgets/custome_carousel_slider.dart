
// import 'package:flutter/material.dart';

// class CustomeCarousel extends StatelessWidget {
//   const CustomeCarousel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  CarouselSlider(
//             options: CarouselOptions(
//               height: 184.0,
//               viewportFraction: 0.8,
//               initialPage: 0,
//               enableInfiniteScroll: true,
//               reverse: false,
//               autoPlay: true,
//               autoPlayInterval: Duration(seconds: 3),
//               autoPlayAnimationDuration: Duration(milliseconds: 800),
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enlargeCenterPage: true,
//               scrollDirection: Axis.horizontal,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _current = index;
//                 });
//               },
//             ),
//             items: [
//               'assets/images/Banner.png',
//               'assets/images/Banner.png',
//               'assets/images/Banner.png',
//               // Add more image URLs here
//             ].map((url) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 184,
//                     child: Image.asset(url, fit: BoxFit.fill),
//                   );
//                 },
//               );
//             }).toList(),
//           ),;
//   }
// }