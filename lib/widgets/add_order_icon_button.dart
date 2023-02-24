import 'package:flutter/material.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';


class AddOrderIconButton extends StatelessWidget {
  const AddOrderIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 48.0,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: () {},
        iconSize: 30.0,
        color: Colors.white,
        icon: const Icon(Icons.add),
      ),
    );
  }
}
