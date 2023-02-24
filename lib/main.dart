import 'package:flutter/material.dart';
import 'package:food_delivery_ui/pages/home_page.dart';
import 'package:food_delivery_ui/theme/app_theme.dart';
import 'package:food_delivery_ui/utils/ui_general_functions.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setUIOverlayStyle();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const HomePage(),
    );
  }
}
