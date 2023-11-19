import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/ProductSuggestionController/product_suggestion_contr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'product_grid_item.dart';

class ProductGrid extends ConsumerWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      margin: EdgeInsets.only(bottom: 20),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: [
          for (final eachOne
              in ref.watch(productSuggestionProvider).getSuggestions())
            productGridItem(eachOne, context)
        ],
      ),
    );
  }
}
