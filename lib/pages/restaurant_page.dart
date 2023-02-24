import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';
import 'package:food_delivery_ui/models/restaurant.dart';
import 'package:food_delivery_ui/widgets/action_chip_custom_button.dart';
import 'package:food_delivery_ui/widgets/animated_row_of_icons.dart';
import 'package:food_delivery_ui/widgets/rating_stars_widget.dart';

class RestaurantPage extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantPage({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: restaurant.imageUrl,
                child: Image.asset(
                  restaurant.imageUrl,
                  height: 220.0,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
              const AnimatedRowOfIcons(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 24,
            ).copyWith(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  restaurant.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '0.2 miles away',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 12),
            child: RatingStarsWidget(
              rating: restaurant.rating,
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              restaurant.address,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionChipCustomeButton(
                  onPressed: () {},
                  text: AppTexts.reviewsButton,
                ),
                ActionChipCustomeButton(
                  onPressed: () {},
                  text: AppTexts.contactButton,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
