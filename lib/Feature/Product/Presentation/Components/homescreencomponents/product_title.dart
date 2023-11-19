// title
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  final String leadingTitle;
  final String? trailingTitle;
  const ProductTitle(
      {super.key, required this.leadingTitle, this.trailingTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leadingTitle,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        trailingTitle ?? "",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
