import '/Feature/Product/Repository/Source/Local/ManageCart/cart_repository.dart';
import '/Models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// creating a provider that exposes the object of this class.
final cartControllerProvider =
    StateNotifierProvider<CartController, Map<String, int>>(
  (ref) => CartController(
    cartRepository: ref.watch(cartRepositoryProvider),
  ),
);

class CartController extends StateNotifier<Map<String, int>> {
  final CartRepository _cartRepository;
  CartController({required CartRepository cartRepository})
      : _cartRepository = cartRepository,
        super({});

  // add to the cart
  /*
    * the method that will delegate the add to cart logic
    * to the metod in cart repository
    */
  void addToCart({required ProductModel productModel}) {
    _cartRepository.addToCart(model: productModel);
    int numberOfTimes = _cartRepository.getCartItems()[productModel] ?? 0;
    state = {...state, productModel.id: numberOfTimes};
  }

  /*
  * remove item means if you have an item  3 times in the cart
  * you decrease then  when it is 1 and again you hit [minus] 
  * button then we will delete because it will be [0] other
  * we will decrement it's value[how many times has added to the cart]
  * again and again.
  */
  void removeFromCart({required ProductModel model}) {
    if (_cartRepository.getCartItems().containsKey(model)) {
      _cartRepository.removeFromCart(item: model);
      int numberOfTimes = _cartRepository.getCartItems()[model] ?? 0;
      if (numberOfTimes == 0)
        _removeItemFromState(model);
      else
        _decrementItemValue(numberOfTimes, model.id);
    }
  }

  // remove item from state - when it count =1 and user hits [minus button]
  void _removeItemFromState(ProductModel model) {
    state = Map.fromIterable(
        state.keys
            .where((element) => element != model.id || state[element] == 0),
        key: (key) => key,
        value: (element) {
          return int.parse(state[element].toString());
        });
  }

  // decrement item value in the state
  // when it count [number of times in the cart] is greater than 1
  // then decrement.
  void _decrementItemValue(int newValue, String id) {
    state = {...state, id: newValue};
  }

  // deleteItem -- completely from state and backend lists.
  void deleteItem(ProductModel item) {
    _cartRepository.deleteItem(itemToBeDelete: item);
    _removeItemFromState(item);
  }

  // getCurrnetitems
  Map<ProductModel, int> getCartItems() => _cartRepository.getCartItems();

  // get total price
  double getTotalPrice() => _cartRepository.calcualteTotalPrice();
}
