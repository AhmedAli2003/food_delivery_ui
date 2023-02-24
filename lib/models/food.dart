import 'package:flutter/foundation.dart' show immutable;

@immutable
class Food {
  final String imageUrl;
  final String name;
  final double price;

  const Food({
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  Food copyWith({
    String? imageUrl,
    String? name,
    double? price,
  }) {
    return Food(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  @override
  String toString() => 'Food(imageUrl: $imageUrl, name: $name, price: $price)';

  @override
  bool operator ==(covariant Food other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.name == name &&
        other.price == price;
  }

  @override
  int get hashCode => imageUrl.hashCode ^ name.hashCode ^ price.hashCode;
}
