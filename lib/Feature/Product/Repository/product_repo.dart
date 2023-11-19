import '../../../Models/product_model.dart';

abstract class ProductRepository {
  List<ProductModel> getProductDetials();
}
