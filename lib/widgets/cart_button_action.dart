import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';
import 'package:food_delivery_ui/pages/cart_page.dart';

class CartButtonAction extends StatelessWidget {
  final int cartLength;
  const CartButtonAction({
    Key? key,
    required this.cartLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const CartPage(),
            ),
          );
        },
        child: Text(
          '${AppTexts.cart} ($cartLength)',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
