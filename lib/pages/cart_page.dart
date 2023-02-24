import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';
import 'package:food_delivery_ui/data/data.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';
import 'package:food_delivery_ui/widgets/cart_item_widget.dart';
import 'package:food_delivery_ui/widgets/total_cost_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppTexts.cart} (${currentUser.cart.length})',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (context, index) {
          if (index < currentUser.cart.length) {
            final order = currentUser.cart[index];
            return CartItemWidget(order: order);
          }
          return TotalCostWidget(cart: currentUser.cart);
        },
        separatorBuilder: (_, __) {
          return const Divider(
            height: 1.0,
            color: AppColors.greyDividerColor,
          );
        },
      ),
      bottomSheet: Container(
        height: 100.0,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -1),
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              AppTexts.checkout,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
