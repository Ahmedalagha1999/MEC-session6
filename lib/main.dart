import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/favorite_feature/favorite_screen.dart';
import 'package:task/features/home_feature/home_screen.dart';
import 'package:task/features/profile_feature/profile_screen.dart';
import 'package:task/features/resturant_feature/resturant_screen.dart';
import 'package:task/features/search_feature/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List screens = [
    HomeScreen(),
    ResturantScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 24, left: 24, bottom: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                // color: Color(0xFFA4A5B0).withOpacity(0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, -3), // changes position of shadow
                  ),
                ],
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed, // Fixed
                backgroundColor: Color(0xFFE3E3E3),
                showUnselectedLabels: true,
                currentIndex: _selectedIndex,
                selectedItemColor: Color(0xFFF83B01),
                unselectedItemColor: Colors.black,
                onTap: _onItemTapped,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.explore), label: "Discover"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.storefront_outlined),
                      label: "Restaurants"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: "Favorite"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile"),
                ],
              ),
            ),
          ),
        ),
        body: screens[_selectedIndex],
      ),
    );
  }
}
