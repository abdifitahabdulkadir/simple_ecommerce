import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

import '../../Repository/Source/Local/Electeronics/Headphones/headphone_repo.dart';
import '../../Repository/Source/Local/Electeronics/Smartwaches/smartwatch_repo.dart';
import '../../Repository/Source/Local/Electeronics/Televisions/televsion_rep.dart';
import '../../Repository/Source/Local/HomeFurniture/Sofa/sofa_repo.dart';

// injecting the object of these parametes into constructor
// of this class and make them provider.
//N:B=> each of these classes have a provider so it is easy.
//riverpod we use "ref" to communicate other providers in the app.
final productSuggestionProvider = Provider((ref) {
  return ProductSuggestionController(
    smartwatchRepostiory: ref.watch(smartwatchProvider),
    sofaRepository: ref.watch(sofaProvider),
    headPhoneRepository: ref.watch(headponeProvider),
    televsionRepository: ref.watch(televisionProvider),
  );
});

class ProductSuggestionController {
  final SmartwatchRepostiory _smartwatchRepostiory;
  final SofaRepository _sofaRepository;
  final HeadPhoneRepository _headPhoneRepository;
  final TelevsionRepository _televsionRepository;

  ProductSuggestionController({
    required SmartwatchRepostiory smartwatchRepostiory,
    required SofaRepository sofaRepository,
    required HeadPhoneRepository headPhoneRepository,
    required TelevsionRepository televsionRepository,
  })  : _smartwatchRepostiory = smartwatchRepostiory,
        _headPhoneRepository = headPhoneRepository,
        _sofaRepository = sofaRepository,
        _televsionRepository = televsionRepository;

  // combine all the data of categories and return as list.
  List<ProductModel> getSuggestions() {
    // adding the data of each these category as one by one
    // using spread operator{...} as you can and then return.
    return [
      ..._smartwatchRepostiory.getProductDetials(),
      ..._sofaRepository.getProductDetials(),
      ..._headPhoneRepository.getProductDetials(),
      ..._televsionRepository.getProductDetials(),
    ];
  }
}
