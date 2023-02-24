import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants/app_texts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: searchController,
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(width: 0.8),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
          hintText: AppTexts.searchFieldHintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: const Icon(
            Icons.search,
            size: 30.0,
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              searchController.clear();
            },
          ),
        ),
      ),
    );
  }
}
