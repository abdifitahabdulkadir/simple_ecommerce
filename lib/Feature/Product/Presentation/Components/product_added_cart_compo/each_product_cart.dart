import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../Cores/Theme/app_theme.dart';
import '../../Screens/product_detail_screen.dart';
import '../productdetialcomponents/increment_decrement_cart.dart';
import 'show_dialog.dart';

class EachProductCart extends ConsumerWidget {
  final ProductModel productItem;
  const EachProductCart({super.key, required this.productItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppTheme.itemBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  productItem.imageUrl,
                  fit: BoxFit.cover,
                  width: 100,
                ),
              ),
              SizedBox(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (builder) =>
                                ProductDetailScreen(productModel: productItem),
                          ),
                        );
                      },
                      child: Container(
                        width: 130,
                        margin: EdgeInsets.only(top: 5, left: 5),
                        child: Text(
                          productItem.name,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        productItem.name[0].toUpperCase() +
                            productItem.name.substring(1),
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "\$ ${productItem.price}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: IconButton(
                  onPressed: () {
                    showDialogForDeleting(context, ref, productItem);
                  },
                  icon: Icon(
                    Icons.delete_outline_rounded,
                    color: AppTheme.secondaryColor,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(right: 10, bottom: 10),
              child: IncrementDecrementItem(
                fontColor: Colors.black,
                bgColor: AppTheme.itemBackground,
                myWidth: 100,
                myHeight: 40,
                productModel: productItem,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
