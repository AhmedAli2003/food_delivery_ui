import 'package:flutter/material.dart';
import 'package:food_delivery_ui/models/food.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';
import 'package:food_delivery_ui/widgets/add_order_icon_button.dart';

class FoodGridItem extends StatelessWidget {
  const FoodGridItem({
    Key? key,
    required this.sideLength,
    required this.food,
  }) : super(key: key);

  final double sideLength;
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: sideLength,
          width: sideLength,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(food.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          height: sideLength,
          width: sideLength,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColors.gradientColor1,
                AppColors.gradientColor2,
                AppColors.gradientColor3,
                AppColors.gradientColor4,
              ],
              stops: [0.1, 0.5, 0.7, 0.9],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              food.name,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${food.price}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        const Positioned(
          bottom: 8.0,
          right: 0.0,
          child: AddOrderIconButton(),
        ),
      ],
    );
  }
}
