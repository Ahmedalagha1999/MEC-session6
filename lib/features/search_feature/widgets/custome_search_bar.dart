import 'package:flutter/material.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  // color: labelTextColor,
                  fontSize: 15,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.grey.shade300,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 215, 217, 223), width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 218, 220, 225), width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search', // set the hint text here

                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                ), // add the search icon here
              ),
            ),
          ),
        ],
      ),
    );
  }
}
