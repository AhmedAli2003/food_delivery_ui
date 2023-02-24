import 'package:flutter/material.dart';

class FoodImageWidget extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  const FoodImageWidget({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Hero(
        tag: imageUrl,
        child: Image.asset(
          imageUrl,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
