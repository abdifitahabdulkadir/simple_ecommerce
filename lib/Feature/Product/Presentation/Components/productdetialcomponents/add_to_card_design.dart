import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/increment_decrement_cart.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Screens/product_added_cart_screen.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

import '../../../../../Cores/Theme/app_theme.dart';

class AddToCard extends StatelessWidget {
  final ProductModel productModel;
  const AddToCard({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IncrementDecrementItem(
            borderColor: Colors.white,
            bgColor: null,
            myWidth: 150,
            myHeight: 40,
            productModel: productModel,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => ProductAddedCart(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 45,
              margin: EdgeInsets.only(top: 4, right: 4, bottom: 4),
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Go To Cart",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
