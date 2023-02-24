import 'package:flutter/material.dart';
import 'package:food_delivery_ui/widgets/rating_stars_widget.dart';

class RestaurantDetailsColumn extends StatelessWidget {
  final String restaurantName;
  final String address;
  final int rating;
  const RestaurantDetailsColumn({
    super.key,
    required this.restaurantName,
    required this.address,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                restaurantName,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              address,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 14),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            RatingStarsWidget(rating: rating),
            Text(
              '0.2 miles away',
              style: Theme.of(context).textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
