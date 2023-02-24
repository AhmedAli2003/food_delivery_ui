import 'package:flutter/material.dart';
import 'package:food_delivery_ui/models/order.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';
import 'package:food_delivery_ui/widgets/food_details_column.dart';
import 'package:food_delivery_ui/widgets/food_image_widget.dart';

class RecentOrderWidget extends StatelessWidget {
  final Order order;
  const RecentOrderWidget({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: AppColors.greyBorderColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FoodImageWidget(imageUrl: order.food.imageUrl),
          FoodDetailsColumn(
            foodName: order.food.name,
            restaurantName: order.restaurant.name,
            orderDate: order.date,
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
