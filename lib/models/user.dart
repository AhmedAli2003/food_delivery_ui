import 'package:flutter/foundation.dart' show immutable, listEquals;

import 'package:food_delivery_ui/models/order.dart';

@immutable
class User {
  final String name;
  final List<Order> orders;
  final List<Order> cart;

  const User({
    required this.name,
    required this.orders,
    required this.cart,
  });

  User copyWith({
    String? name,
    List<Order>? orders,
    List<Order>? cart,
  }) {
    return User(
      name: name ?? this.name,
      orders: orders ?? this.orders,
      cart: cart ?? this.cart,
    );
  }

  @override
  String toString() => 'User(name: $name, orders: $orders, cart: $cart)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      listEquals(other.orders, orders) &&
      listEquals(other.cart, cart);
  }

  @override
  int get hashCode => name.hashCode ^ orders.hashCode ^ cart.hashCode;
}
