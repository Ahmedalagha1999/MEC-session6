import 'package:flutter/material.dart';
import 'package:task/features/resturant_feature/widgets/food_info_card2.dart';
import 'package:task/features/search_feature/widgets/custome_search_bar.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              children: [
                CustomeSearchBar(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.all(4),
                          alignment: Alignment.center,
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 104, 54),
                              borderRadius: BorderRadius.circular(54)),
                          child: Text(
                            "Food items",
                            style: TextStyle(color: Colors.white),
                          )),
                      Padding(
                        child: Text(
                          "Resturants",
                          style: TextStyle(color: Colors.grey),
                        ),
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                ...List.generate(
                  3,
                  (index) => FoodInfoCard2(favIcon: true),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
