import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

class ProductColors extends StatelessWidget {
  final ProductModel productModel;
  const ProductColors({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Color",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        for (final eachColor in productModel.color)
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: eachColor,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
      ],
    );
  }
}
