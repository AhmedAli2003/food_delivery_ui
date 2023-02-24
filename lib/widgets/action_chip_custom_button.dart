import 'package:flutter/material.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';

class ActionChipCustomeButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ActionChipCustomeButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: onPressed,
      elevation: 1.0,
      pressElevation: 3.0,
      backgroundColor: AppColors.primaryColor,
      labelPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      labelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      label: Text(text),
    );
  }
}
