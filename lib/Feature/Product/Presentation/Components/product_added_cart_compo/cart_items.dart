import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../Controller/AddedToCartController/cart_controller.dart';
import 'each_product_cart.dart';

class CartItems extends ConsumerWidget {
  const CartItems({super.key});

// build method
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(cartControllerProvider.notifier).getCartItems();
    final value = ref.watch(cartControllerProvider);

    return value.isEmpty
        ? SizedBox()
        : SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final productItem = (items.keys.toList())[index];
                return EachProductCart(productItem: productItem);
              },
            ),
          );
  }
}
