import 'package:flutter/material.dart' show Color, Colors, MaterialColor;

class AppColors {
  static const Color scaffoldBackgroundColor = Color.fromRGBO(250, 250, 250, 1);
  static const Color primaryColor = Colors.deepOrangeAccent;
  static final MaterialColor primarySwatch = MaterialColor(
    0xFFFF6E40,
    {
      50: Colors.deepOrangeAccent.shade100,
      100: Colors.deepOrangeAccent.shade100,
      200: Colors.deepOrangeAccent.shade200,
      300: Colors.deepOrangeAccent.shade200,
      400: Colors.deepOrangeAccent.shade400,
      500: Colors.deepOrangeAccent.shade400,
      600: Colors.deepOrangeAccent.shade400,
      700: Colors.deepOrangeAccent.shade700,
      800: Colors.deepOrangeAccent.shade700,
      900: Colors.deepOrangeAccent.shade700,
    },
  );
  static const Color transparent = Colors.transparent;
  static const Color greyBorderColor = Color.fromRGBO(238, 238, 238, 1);
  static const Color greyDividerColor = Colors.grey;
  static const Color arrowIconColor = Colors.white;
  static const Color selectedFavoriteIconColor = Colors.red;
  static const Color unselectedFavoriteIconColor = Colors.white;
  static const Color gradientColor1 = Color.fromRGBO(0, 0, 0, 0.4);
  static const Color gradientColor2 = Color.fromRGBO(0, 0, 0, 0.3);
  static const Color gradientColor3 = Color.fromRGBO(0, 0, 0, 0.25);
  static const Color gradientColor4 = Color.fromRGBO(0, 0, 0, 0.2);
}
