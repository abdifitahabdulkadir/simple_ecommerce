// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:simple_ecommerce/Models/product_model.dart';

class SliderModel {
  final ProductModel productModel;
  final String discountValue;
  final String textToShow;
  SliderModel({
    required this.productModel,
    required this.discountValue,
    required this.textToShow,
  });
}
