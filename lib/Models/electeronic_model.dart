import 'package:simple_ecommerce/Models/product_model.dart';

class ElecteronicModel extends ProductModel {
  ElecteronicModel(
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

// smartwatches
// you can add specif feilds of smartches here.
class SmartwatchesModel extends ElecteronicModel {
  SmartwatchesModel(
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

// tv model
// feel free to add specific detial of tv here
// along the electenoic data
class TelevisionModel extends ElecteronicModel {
  TelevisionModel(
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

//headphone model
// feel free to add things
// that are speciifc for headhpones
class HeadhponesModel extends ElecteronicModel {
  HeadhponesModel(
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
