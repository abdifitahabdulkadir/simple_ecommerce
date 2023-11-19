import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Cores/Theme/app_theme.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppTheme.itemBackground,
            blurRadius: 3,
            spreadRadius: 2,
            offset: Offset(2, 1),
          )
        ],
        color: AppTheme.itemBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
          ),
          suffixIcon: Container(
            width: 80,
            child: Row(
              children: [
                Text(
                  "|",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            fontSize: 15,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
