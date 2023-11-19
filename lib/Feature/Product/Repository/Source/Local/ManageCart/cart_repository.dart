import 'package:simple_ecommerce/Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// create a provide to expose the object of this repository
final cartRepositoryProvider = Provider((ref) => CartRepository());

class CartRepository {
  Map<ProductModel, int> _addedCartItems = {};

  void addToCart({required ProductModel model}) {
    _addedCartItems.update(
      model,
      (curretValue) {
        return curretValue + 1;
      },
      ifAbsent: () {
        return 1;
      },
    );
  }

  // remove from the card
  void removeFromCart({required ProductModel item}) {
    // remove if item value {number of times in cart is 1} otherwise
    // decrement.

    // find value of current item
    final int valueOfCurrentItem = _addedCartItems[item] ?? 0;

    // remove if value is 1
    if (valueOfCurrentItem == 1) {
      _addedCartItems.remove(item);
    }

    // else update by decreasing one
    else
      _addedCartItems.update(item, (currentValue) => currentValue - 1);
  }

  // deleteThe item
  void deleteItem({required ProductModel itemToBeDelete}) {
    _addedCartItems.remove(itemToBeDelete);
  }

  // getCardItmes
  Map<ProductModel, int> getCartItems() => _addedCartItems;

  // calculate total amount of cost
  double calcualteTotalPrice() {
    double total = 0;
    for (final eachProduct in _addedCartItems.keys) {
      total += (eachProduct.price * _addedCartItems[eachProduct]!);
    }
    return total;
  }
}
