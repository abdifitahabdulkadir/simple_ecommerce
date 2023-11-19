import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../Cores/Theme/app_theme.dart';
import '../../../Controller/AddedToCartController/cart_controller.dart';

class ProductNameAddCartButton extends ConsumerWidget {
  final ProductModel productModel;
  const ProductNameAddCartButton({super.key, required this.productModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int productStateValue =
        ref.watch(cartControllerProvider)[productModel.id] ?? 0;
    ref.watch(cartControllerProvider);
    return ListTile(
      title: Text(
        productModel.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      trailing: productStateValue != 0
          ? null
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: AppTheme.secondaryColor,
              ),
              onPressed: () {
                ref.read(cartControllerProvider.notifier).addToCart(
                      productModel: productModel,
                    );
              },
              child: Text(
                "Add Card",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
      subtitle: Text(
        "\$ ${productModel.price}",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
