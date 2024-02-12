import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: CircleAvatar(
                radius: 45,
                child: Image.asset(
                  "assets/images/image 13.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Katty Berry",
              style: mainTitleStyle,
            ),
            Text(
              "kattyberry@gmail.com",
              style: cardsubTextStyle.copyWith(fontSize: 14),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: foodIconColor,
              ),
              title: Text(
                "My Profile",
                style: profileTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: foodIconColor,
              ),
              title: Text(
                "My Orders",
                style: profileTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.local_activity,
                color: foodIconColor,
              ),
              title: Text(
                "Delivery Address",
                style: profileTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: foodIconColor,
              ),
              title: Text(
                "Payments Methods",
                style: profileTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: foodIconColor,
              ),
              title: Text(
                "Contact Us",
                style: profileTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: foodIconColor,
              ),
              title: Text(
                "Settings",
                style: profileTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: foodIconColor,
              ),
              title: Text(
                "Help & FAQ ",
                style: profileTextStyle,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                width: 130,
                height: 44,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xFFF83B01)),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Color(0xFFF83B01),
                    ),
                    Text(
                      "Log out",
                      style: TextStyle(
                          color: Color(0xFFF83B01),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
