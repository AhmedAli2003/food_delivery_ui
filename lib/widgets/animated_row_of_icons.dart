import 'package:flutter/material.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';

class AnimatedRowOfIcons extends StatefulWidget {
  const AnimatedRowOfIcons({Key? key}) : super(key: key);

  @override
  State<AnimatedRowOfIcons> createState() => _AnimatedRowOfIconsState();
}

class _AnimatedRowOfIconsState extends State<AnimatedRowOfIcons> {
  double opacity = 0.0;
  bool selected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() => opacity = 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: opacity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 8.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              color: AppColors.arrowIconColor,
              iconSize: 30.0,
              icon: const Icon(Icons.arrow_back_ios),
            ),
            IconButton(
              onPressed: () => setState(() => selected = !selected),
              color: selected ? AppColors.selectedFavoriteIconColor : AppColors.unselectedFavoriteIconColor,
              iconSize: 35.0,
              icon: const Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}
