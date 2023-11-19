import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/product_grid_extension.dart';
import 'package:simple_ecommerce/Models/product_model.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Screens/product_detail_screen.dart';

import '../../../../../Cores/Theme/app_theme.dart';

Widget productGridItem(ProductModel item, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (builder) => ProductDetailScreen(productModel: item)));
    },
    child: Hero(
      tag: item.imageUrl,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5.0),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: AppTheme.itemBackground,
            borderRadius: BorderRadius.circular(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                  color: item.isFavored ? AppTheme.secondaryColor : Colors.grey,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
              child: Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: context.productGridiImageWidth,
            child: Image.asset(
              item.imageUrl,
              height: context.productGridiImageWidth,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: 150,
            child: Text(
              item.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "\$ ${item.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                for (final eachColor in item.color)
                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: eachColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
              ],
            ),
          )
        ]),
      ),
    ),
  );
}
