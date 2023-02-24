import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';
import 'package:food_delivery_ui/data/data.dart';
import 'package:food_delivery_ui/theme/app_colors.dart';
import 'package:food_delivery_ui/widgets/food_image_widget.dart';

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
        itemCount: currentUser.cart.length,
        itemBuilder: (context, index) {
          final order = currentUser.cart[index];
          return Container(
            height: 220,
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                FoodImageWidget(
                  imageUrl: order.food.imageUrl,
                  height: 180,
                  width: 160,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.food.name,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          order.restaurant.name,
                          style: Theme.of(context).textTheme.displayMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 112,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 0.8, color: AppColors.greyBorderColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove, color: AppColors.primaryColor),
                              ),
                              Text(
                                order.quantity.toString(),
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add, color: AppColors.primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '\$${order.quantity * order.food.price}',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) {
          return const Divider(
            height: 1.0,
            color: AppColors.greyDividerColor,
          );
        },
      ),
    );
  }
}
