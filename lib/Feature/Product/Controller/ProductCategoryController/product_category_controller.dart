import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

import '../../Repository/Source/Local/Electeronics/Headphones/headphone_repo.dart';
import '../../Repository/Source/Local/Electeronics/Smartwaches/smartwatch_repo.dart';
import '../../Repository/Source/Local/Electeronics/Televisions/televsion_rep.dart';
import '../../Repository/Source/Local/HomeFurniture/Sofa/sofa_repo.dart';

final productCategoryProvider = StateNotifierProvider(
  (ref) => ProductCategoryController(
    smartwatchRepostiory: ref.watch(smartwatchProvider),
    sofaRepository: ref.watch(sofaProvider),
    headPhoneRepository: ref.watch(headponeProvider),
    televsionRepository: ref.watch(televisionProvider),
  ),
);

class ProductCategoryController extends StateNotifier<int> {
  final SmartwatchRepostiory _smartwatchRepostiory;
  final SofaRepository _sofaRepository;
  final HeadPhoneRepository _headPhoneRepository;
  final TelevsionRepository _televsionRepository;
  List<ProductModel> categories = [];
  ProductCategoryController({
    required SmartwatchRepostiory smartwatchRepostiory,
    required SofaRepository sofaRepository,
    required HeadPhoneRepository headPhoneRepository,
    required TelevsionRepository televsionRepository,
  })  : _smartwatchRepostiory = smartwatchRepostiory,
        _headPhoneRepository = headPhoneRepository,
        _sofaRepository = sofaRepository,
        _televsionRepository = televsionRepository,
        super(0);

  // get productCategory to show
  /*
      * when slider show earpone the category list will list of earphones
      * we have and when show tv they will televsions we have in our dummy data.
      */

  List<ProductModel> getCurrentCategory() {
    if (state == 0 || state == 1) {
      return categories = _headPhoneRepository.getProductDetials();
    } else if (state == 2) {
      return categories = _smartwatchRepostiory.getProductDetials();
    } else if (state == 3) {
      return categories = _televsionRepository.getProductDetials();
    } else {
      return categories = _sofaRepository.getProductDetials();
    }
  }

  void setUpdate(int index) {
    state = index;
  }
}
