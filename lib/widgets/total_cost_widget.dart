import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';
import 'package:food_delivery_ui/models/order.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';

class TotalCostWidget extends StatelessWidget {
  final List<Order> cart;
  const TotalCostWidget({
    Key? key,
    required this.cart,
  }) : super(key: key);

  double _getTotalPrice(List<Order> cart) {
    double totalPrice = 0.0;
    for (final element in cart) {
      totalPrice += element.food.price * element.quantity;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    final totalPrice = _getTotalPrice(cart);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.estimatedDeliveryTime,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                '25 min',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.totalCost,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(color: AppColors.priceColor),
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
