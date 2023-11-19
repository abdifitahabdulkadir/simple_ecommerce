import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/product_color.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/product_description.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/product_item_riview.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/product_name_add_button.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/productdetialcomponents/product_specification.dart';
import 'package:simple_ecommerce/Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'product_rating_count.dart';

class ProductItemDetail extends ConsumerStatefulWidget {
  final ProductModel productModel;
  const ProductItemDetail({super.key, required this.productModel});

  @override
  ConsumerState<ProductItemDetail> createState() => _ProductItemDetailState();
}

class _ProductItemDetailState extends ConsumerState<ProductItemDetail> {
  final descrionKey = "description";
  final String specificationKey = "specification";
  final String reviewKey = "review";
  Map<String, bool> tapToShow = {
    "description": true,
    "specification": false,
    "review": false,
  };
  // tab design
  Widget _tabDesign(
      {required String name,
      required Color bgColor,
      Color fontColor = Colors.white}) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 20,
          color: fontColor,
        ),
      ),
    );
  }

//buttons for specification, description and reviews
  Widget _productTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            _updateTabToShow(
              showDescr: true,
              showRevies: false,
              showSpeci: false,
            );
          },
          child: _tabDesign(
            bgColor: AppTheme.secondaryColor,
            name: "Description",
            fontColor: Colors.white,
          ),
        ),
        InkWell(
          onTap: () {
            _updateTabToShow(
              showDescr: false,
              showRevies: false,
              showSpeci: true,
            );
          },
          child: _tabDesign(
            bgColor: AppTheme.itemBackground,
            name: "Specification",
            fontColor: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            _updateTabToShow(
              showDescr: false,
              showRevies: true,
              showSpeci: false,
            );
          },
          child: _tabDesign(
            bgColor: AppTheme.itemBackground,
            name: "Reviews",
            fontColor: Colors.black,
          ),
        ),
      ],
    );
  }

  void _updateTabToShow(
      {bool showDescr = true,
      bool showSpeci = false,
      bool showRevies = false}) {
    setState(() {
      tapToShow.update(descrionKey, (value) => showDescr);
      tapToShow.update(specificationKey, (value) => showSpeci);
      tapToShow.update(reviewKey, (value) => showRevies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            ProductNameAddCartButton(productModel: widget.productModel),
            ProductRatingCount(productModel: widget.productModel),
            ProductColors(productModel: widget.productModel),
            SizedBox(height: 10),
            _productTabs(),
            if (tapToShow[descrionKey] == true)
              ProductDescription(
                  productDescription: widget.productModel.description),
            if (tapToShow[specificationKey] == true)
              ProductSpecification(
                  productSpecification: widget.productModel.specification),
            if (tapToShow[reviewKey] == true) ProductItemReview(),
          ],
        ),
      ),
    );
  }
}
