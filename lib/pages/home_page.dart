import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';
import 'package:food_delivery_ui/data/data.dart';
import 'package:food_delivery_ui/widgets/cart_button_action.dart';
import 'package:food_delivery_ui/widgets/nearby_restaurants_list_view.dart';
import 'package:food_delivery_ui/widgets/recent_orders_list_view.dart';
import 'package:food_delivery_ui/widgets/search_text_field.dart';
import 'package:food_delivery_ui/widgets/section_text_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
          iconSize: 30.0,
        ),
        title: const Text(AppTexts.homePageTitle),
        actions: [
          CartButtonAction(cartLength: currentUser.cart.length),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(searchController: searchController),
            const SectionTextTitle(title: AppTexts.recentOrdersTitle),
            RecentOrdersListView(orders: currentUser.orders),
            const SectionTextTitle(title: AppTexts.nearbyRestaurantsTitle),
            NearbyRestaurantsListView(restaurants: restaurants),
          ],
        ),
      ),
    );
  }
}

