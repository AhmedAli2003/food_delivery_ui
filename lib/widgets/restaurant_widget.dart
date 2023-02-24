import 'package:flutter/material.dart';
import 'package:food_delivery_ui/models/restaurant.dart';
import 'package:food_delivery_ui/pages/restaurant_page.dart';
import 'package:food_delivery_ui/widgets/custom_container_with_grey_border.dart';
import 'package:food_delivery_ui/widgets/food_image_widget.dart';
import 'package:food_delivery_ui/widgets/restaurant_details_column.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithGreyBorder(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => RestaurantPage(
            restaurant: restaurant,
          ),
        ),
      ),
      width: 360,
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FoodImageWidget(
            imageUrl: restaurant.imageUrl,
            height: 200,
            width: 180,
          ),
          RestaurantDetailsColumn(
            restaurantName: restaurant.name,
            address: restaurant.address,
            rating: restaurant.rating,
          ),
        ],
      ),
    );
  }
}
