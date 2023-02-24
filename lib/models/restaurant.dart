import 'package:flutter/foundation.dart' show immutable, listEquals;

import 'package:food_delivery_ui/models/food.dart';

@immutable
class Restaurant {
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  const Restaurant({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.rating,
    required this.menu,
  });

  Restaurant copyWith({
    String? imageUrl,
    String? name,
    String? address,
    int? rating,
    List<Food>? menu,
  }) {
    return Restaurant(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      address: address ?? this.address,
      rating: rating ?? this.rating,
      menu: menu ?? this.menu,
    );
  }

  @override
  String toString() {
    return 'Restaurant(imageUrl: $imageUrl, name: $name, address: $address, rating: $rating, menu: $menu)';
  }

  @override
  bool operator ==(covariant Restaurant other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl && other.name == name && other.address == address && other.rating == rating && listEquals(other.menu, menu);
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^ name.hashCode ^ address.hashCode ^ rating.hashCode ^ menu.hashCode;
  }
}
