import 'package:flutter/material.dart';

class RatingStarsWidget extends StatelessWidget {
  final int rating;
  final MainAxisAlignment mainAxisAlignment;
  const RatingStarsWidget({
    super.key,
    required this.rating,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: List.filled(
        rating,
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 32,
        ),
      ),
    );
  }
}
