import 'package:flutter/material.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';

class CustomContainerWithGreyBorder extends StatelessWidget {
  final double width;
  final Widget child;
  final double? height;
  final void Function()? onTap;
  const CustomContainerWithGreyBorder({
    super.key,
    required this.width,
    required this.child,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1.0,
            color: AppColors.greyBorderColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}
