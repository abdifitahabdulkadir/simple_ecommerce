import 'package:flutter/material.dart';

/*
*the productDescirption of text .
* later change swill affect here only
*/
class ProductDescription extends StatelessWidget {
  final String productDescription;

  ProductDescription({required this.productDescription});
  @override
  Widget build(BuildContext context) {
    return Text(
      productDescription,
      maxLines: 16,
      textAlign: TextAlign.justify,
      style: TextStyle(
        height: 1.5,
        fontSize: 16,
      ),
    );
  }
}
