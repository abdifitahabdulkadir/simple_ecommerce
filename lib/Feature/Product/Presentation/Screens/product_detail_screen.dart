import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/add_to_card_design.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/product_item_detail.dart';
import '../../../../Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Controller/AddedToCartController/cart_controller.dart';

class ProductDetailScreen extends ConsumerWidget {
  final ProductModel productModel;

  ProductDetailScreen({required this.productModel});

  // design of top buttons for reuesability
  Widget _designAppBarButton(IconData icon) => Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
      );

  // app bar of product detial
  PreferredSizeWidget _productDetialAppBar(BuildContext context) => AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,
        leading: Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: InkWell(
                onTap: Navigator.of(context).pop,
                child: _designAppBarButton(Icons.arrow_back))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: _designAppBarButton(Icons.share_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: _designAppBarButton(Icons.favorite_border_rounded),
          ),
        ],
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int productStateValue =
        ref.watch(cartControllerProvider)[productModel.id] ?? 0;

    return Scaffold(
      backgroundColor: AppTheme.itemBackground,
      appBar: _productDetialAppBar(context),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Hero(
              tag: productModel.imageUrl,
              child: Image.asset(
                productModel.imageUrl,
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.maxFinite - 200,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ProductItemDetail(productModel: productModel)
        ],
      ),
      floatingActionButtonLocation: productStateValue != 0
          ? FloatingActionButtonLocation.centerFloat
          : null,
      floatingActionButton:
          productStateValue != 0 ? AddToCard(productModel: productModel) : null,
    );
  }
}
