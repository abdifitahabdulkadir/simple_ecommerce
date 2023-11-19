import 'package:flutter/material.dart';

class AppTheme {
  static const Color appBarBgColor = Colors.white;
  static final Color itemBackground = Color.fromRGBO(228, 230, 230, 1);
  static final Color secondaryColor = Color.fromRGBO(229, 86, 4, 1);

  static ThemeData getLightTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: appBarBgColor),
      brightness: Brightness.light,
    );
  }
}
