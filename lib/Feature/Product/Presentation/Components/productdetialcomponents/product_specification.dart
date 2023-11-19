import 'package:flutter/material.dart';

/*
*the productSpecification of text .
* later change swill affect here only
*/
class ProductSpecification extends StatelessWidget {
  final String productSpecification;

  ProductSpecification({required this.productSpecification});
  @override
  Widget build(BuildContext context) {
    return Text(
      productSpecification,
      maxLines: 16,
      textAlign: TextAlign.justify,
      style: TextStyle(
        height: 1.5,
        fontSize: 16,
      ),
    );
  }
}
