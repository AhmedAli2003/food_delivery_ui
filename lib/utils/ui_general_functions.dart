import 'package:flutter/material.dart' show Colors;
import 'package:flutter/services.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';

void setUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.primaryColor,
    ),
  );
}
