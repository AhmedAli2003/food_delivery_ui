import 'package:flutter/material.dart';

class FoodImageWidget extends StatelessWidget {
  final String imageUrl;
  const FoodImageWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        imageUrl,
        height: 100,
        width: 132,
        fit: BoxFit.cover,
      ),
    );
  }
}
