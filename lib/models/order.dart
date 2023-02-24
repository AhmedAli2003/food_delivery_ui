import 'package:flutter/foundation.dart' show immutable;

import 'package:food_delivery_ui/models/food.dart';
import 'package:food_delivery_ui/models/restaurant.dart';

@immutable
class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  const Order({
    required this.restaurant,
    required this.food,
    required this.date,
    required this.quantity,
  });

  Order copyWith({
    Restaurant? restaurant,
    Food? food,
    String? date,
    int? quantity,
  }) {
    return Order(
      restaurant: restaurant ?? this.restaurant,
      food: food ?? this.food,
      date: date ?? this.date,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  String toString() {
    return 'Order(restaurant: $restaurant, food: $food, date: $date, quantity: $quantity)';
  }

  @override
  bool operator ==(covariant Order other) {
    if (identical(this, other)) return true;
  
    return 
      other.restaurant == restaurant &&
      other.food == food &&
      other.date == date &&
      other.quantity == quantity;
  }

  @override
  int get hashCode {
    return restaurant.hashCode ^
      food.hashCode ^
      date.hashCode ^
      quantity.hashCode;
  }
}
