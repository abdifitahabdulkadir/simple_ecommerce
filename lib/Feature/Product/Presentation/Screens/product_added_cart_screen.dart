import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/AddedToCartController/cart_controller.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/BottomBarController/bottombar_controller.dart';

import '../Components/product_added_cart_compo/cart_items.dart';
import '../Components/product_added_cart_compo/cart_summery.dart';
import '../Components/product_added_cart_compo/empty_card.dart';

class ProductAddedCart extends ConsumerWidget {
  const ProductAddedCart({super.key});

  PreferredSizeWidget _doAppBar(BuildContext context, WidgetRef ref) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: AppTheme.itemBackground,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10, top: 15),
        child: InkWell(
          onTap: () {
            if (ref.read(bottomBarProvider) == 3)
              ref.read(bottomBarProvider.notifier).setUpdate(1);
            else {
              Navigator.of(context).pop();
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(left: 10, top: 15),
        child: Text(
          "My Cart",
          style: TextStyle(
            fontSize: 30,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItemsIsEmpty = ref.watch(cartControllerProvider).isEmpty;
    return Scaffold(
      backgroundColor: AppTheme.itemBackground,
      appBar: _doAppBar(context, ref),
      body: cartItemsIsEmpty
          ? EmtpyCard()
          : SingleChildScrollView(
              child: Column(
                children: [
                  CartItems(),
                  CartSummery(),
                ],
              ),
            ),
      floatingActionButtonLocation:
          !cartItemsIsEmpty ? FloatingActionButtonLocation.centerFloat : null,
      floatingActionButton: !cartItemsIsEmpty
          ? Container(
              height: 50,
              width: double.maxFinite,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            )
          : null,
    );
  }
}
