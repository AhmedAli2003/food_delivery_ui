import 'package:flutter/material.dart';

class FoodDetailsColumn extends StatelessWidget {
  final String foodName;
  final String restaurantName;
  final String orderDate;
  const FoodDetailsColumn({
    Key? key,
    required this.foodName,
    required this.restaurantName,
    required this.orderDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                foodName,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              restaurantName,
              style: Theme.of(context).textTheme.displayMedium,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              orderDate,
              style: Theme.of(context).textTheme.displayMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
