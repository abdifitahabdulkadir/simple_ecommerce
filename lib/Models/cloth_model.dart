import 'package:simple_ecommerce/Models/product_model.dart';

// parent of all cloth and it child of product.
class ClothModel extends ProductModel {
  ClothModel(
      {required super.id,
      required super.name,
      required super.specification,
      required super.description,
      required super.color,
      required super.ratingValue,
      required super.price,
      required super.isFavored,
      required super.imageUrl,
      required super.category,
      required super.review});
}

/*
* now we have two types of cloth 
 * 1. tshirt 
 * 2. shoes.
 * each one of them has those properites and we can
 * add incase it has some 
 * specific data for it's self.
*/

// feel free to add spefic
//data of tshirt inase you have or want.
class TshirtModel extends ClothModel {
  TshirtModel(
      {required super.id,
      required super.name,
      required super.specification,
      required super.description,
      required super.color,
      required super.ratingValue,
      required super.price,
      required super.isFavored,
      required super.imageUrl,
      required super.category,
      required super.review});
}

// feel free to add spefic
//data of shoe inase you have or want.
class ShoeModel extends ClothModel {
  ShoeModel(
      {required super.id,
      required super.name,
      required super.specification,
      required super.description,
      required super.color,
      required super.ratingValue,
      required super.price,
      required super.isFavored,
      required super.imageUrl,
      required super.category,
      required super.review});
}
