import 'package:flutter/material.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';

final ThemeData theme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  primarySwatch: AppColors.primarySwatch,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateColor.resolveWith((states) => AppColors.transparent),
    ),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: Colors.grey,
      fontSize: 14,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
      color: Colors.grey,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    titleMedium: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
    ),
  ),
  splashColor: AppColors.transparent,
  highlightColor: AppColors.transparent,
);
