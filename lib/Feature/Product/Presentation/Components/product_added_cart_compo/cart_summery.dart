import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../Cores/Theme/app_theme.dart';
import '../../../Controller/AddedToCartController/cart_controller.dart';

class CartSummery extends ConsumerWidget {
  const CartSummery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = ref.watch(cartControllerProvider.notifier).getTotalPrice();
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.height * 0.5 -
          100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme.itemBackground,
            ),
            child: TextField(
              decoration: InputDecoration(
                  filled: false,
                  hintText: "Enter discount Code",
                  border: InputBorder.none,
                  suffix: Text(
                    "Apply",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppTheme.secondaryColor,
                    ),
                  )),
            ),
          ),
          ListTile(
            leading: Text(
              "Subtotal",
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey,
              ),
            ),
            trailing: Text(
              "\$ ${total}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 4,
            width: double.maxFinite,
            color: AppTheme.itemBackground,
          ),
          ListTile(
            leading: Text(
              "Total",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            trailing: Text(
              "\$ ${total}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
