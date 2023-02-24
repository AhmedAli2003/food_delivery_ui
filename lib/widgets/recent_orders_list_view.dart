import 'package:flutter/material.dart';
import 'package:food_delivery_ui/models/order.dart';
import 'package:food_delivery_ui/widgets/recent_order_widget.dart';

class RecentOrdersListView extends StatelessWidget {
  final List<Order> orders;
  const RecentOrdersListView({
    Key? key,
    required this.orders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 6.0),
        scrollDirection: Axis.horizontal,
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return RecentOrderWidget(order: order);
        },
      ),
    );
  }
}
