import 'package:flutter/material.dart';
import 'package:food_delivery_ui/models/restaurant.dart';
import 'package:food_delivery_ui/widgets/restaurant_widget.dart';

class NearbyRestaurantsListView extends StatelessWidget {
  final List<Restaurant> restaurants;
  const NearbyRestaurantsListView({
    Key? key,
    required this.restaurants,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: restaurants.length,
        padding: const EdgeInsets.only(left: 6.0, bottom: 32.0),
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return RestaurantWidget(restaurant: restaurant);
        },
      ),
    );
  }
}
