import 'package:flutter/material.dart';

class RatingStarsWidget extends StatelessWidget {
  final int rating;
  const RatingStarsWidget({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
