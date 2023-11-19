import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

import '../../../../../Cores/Theme/app_theme.dart';

class ProductRatingCount extends StatelessWidget {
  final ProductModel productModel;
  const ProductRatingCount({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 200,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              height: 20,
              width: 60,
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.white,
                  ),
                  Text(
                    productModel.ratingValue.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text("(120 Reivews)"),
          ],
        ),
      ),
      trailing: SizedBox(
        width: 150,
        child: Row(
          children: [
            Text(
              "Seller: ",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w900,
              ),
            ),
            Expanded(
              child: Text(
                "Tariqul Islam",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
