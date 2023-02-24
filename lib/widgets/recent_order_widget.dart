import 'package:flutter/material.dart';
import 'package:food_delivery_ui/models/order.dart';
import 'package:food_delivery_ui/widgets/add_order_icon_button.dart';
import 'package:food_delivery_ui/widgets/custom_container_with_grey_border.dart';
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
    return CustomContainerWithGreyBorder(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FoodImageWidget(
            imageUrl: order.food.imageUrl,
            height: 100,
            width: 132,
          ),
          FoodDetailsColumn(
            foodName: order.food.name,
            restaurantName: order.restaurant.name,
            orderDate: order.date,
          ),
          const AddOrderIconButton(),
        ],
      ),
    );
  }
}
