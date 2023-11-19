import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/AddedToCartController/cart_controller.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

class IncrementDecrementItem extends ConsumerWidget {
  final Color? bgColor;
  final Color? borderColor;
  final Color? fontColor;
  final double myWidth;
  final double myHeight;
  final ProductModel productModel;
  const IncrementDecrementItem({
    super.key,
    this.bgColor,
    this.fontColor,
    this.borderColor,
    required this.myWidth,
    required this.myHeight,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: myHeight,
      width: myWidth,
      margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              ref
                  .read(cartControllerProvider.notifier)
                  .addToCart(productModel: productModel);
            },
            child: Text(
              "+",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fontColor ?? Colors.white,
              ),
            ),
          ),
          Text(
            (ref.watch(cartControllerProvider)[productModel.id] ?? 1)
                .toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: fontColor ?? Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              ref
                  .read(cartControllerProvider.notifier)
                  .removeFromCart(model: productModel);
            },
            child: Text(
              "-",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: fontColor ?? Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
