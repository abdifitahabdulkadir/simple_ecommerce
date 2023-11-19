import 'package:flutter/material.dart';

import '../../Dashboard/Screens/home_screen.dart';

class AppRouting {
  static Map<String, Widget Function(BuildContext)> configAppRouting(
      BuildContext context) {
    return {
      "/": (context) => HomeScreen(),
    };
  }
}
