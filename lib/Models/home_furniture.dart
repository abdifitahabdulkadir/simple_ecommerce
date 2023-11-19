import 'package:simple_ecommerce/Models/product_model.dart';
/*
* thisi s parent class of home furniture and subclass
* of product here we can add things that are
* specific only for homefurnitures.
*/

class HomefurnitureModel extends ProductModel {
  HomefurnitureModel(
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

// first type of firniture is SOFA.
// it has home furniture properites and
// we can add incase we have specific data for it.
class SofaModel extends HomefurnitureModel {
  SofaModel(
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
