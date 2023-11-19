import 'package:simple_ecommerce/Models/sliders_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Repository/Source/Local/Electeronics/Headphones/headphone_repo.dart';
import '../../Repository/Source/Local/Electeronics/Smartwaches/smartwatch_repo.dart';
import '../../Repository/Source/Local/Electeronics/Televisions/televsion_rep.dart';
import '../../Repository/Source/Local/HomeFurniture/Sofa/sofa_repo.dart';

// creating a provider for sliderController to expose it's object
final sliderControllerProvider = Provider(
  (ref) => SliderController(
    smartwatchRepostiory: ref.watch(smartwatchProvider),
    sofaRepository: ref.watch(sofaProvider),
    headPhoneRepository: ref.watch(headponeProvider),
    televsionRepository: ref.watch(televisionProvider),
  ),
);

// stateProvider that controlls the current index of
// of each slider and increments and
// then set to zero when it reaches the final one.
final sliderIndexControllerProvider = StateProvider<int>((ref) {
  return 0;
});

class SliderController {
  final SmartwatchRepostiory _smartwatchRepostiory;
  final SofaRepository _sofaRepository;
  final HeadPhoneRepository _headPhoneRepository;
  final TelevsionRepository _televsionRepository;

  SliderController({
    required SmartwatchRepostiory smartwatchRepostiory,
    required SofaRepository sofaRepository,
    required HeadPhoneRepository headPhoneRepository,
    required TelevsionRepository televsionRepository,
  })  : _smartwatchRepostiory = smartwatchRepostiory,
        _headPhoneRepository = headPhoneRepository,
        _sofaRepository = sofaRepository,
        _televsionRepository = televsionRepository;
  List<SliderModel> getSlider() {
    final List<SliderModel> slidersData = [
      SliderModel(
        productModel: _headPhoneRepository.getProductDetials()[0],
        discountValue: "30%",
        textToShow: "Big Sale On Diwali Festival of Earphone. Grap!",
      ),
      SliderModel(
        productModel: _headPhoneRepository.getProductDetials()[1],
        discountValue: "10%",
        textToShow: "Crazy Diwali Discount Here. Grap!",
      ),
      SliderModel(
        productModel: _smartwatchRepostiory.getProductDetials()[3],
        discountValue: "12%",
        textToShow: "Crazy Deals OFFF Firday! Sofaa Grappp",
      ),
      SliderModel(
        productModel: _televsionRepository.getProductDetials()[1],
        discountValue: "11%",
        textToShow: "Crazy Deals OFFF Firday! Sofaa Luxiors Grappp",
      ),
      SliderModel(
        productModel: _sofaRepository.getProductDetials()[2],
        discountValue: "10%",
        textToShow: "Headset for Best Delivery Deal OFF!",
      ),
      SliderModel(
        productModel: _sofaRepository.getProductDetials()[3],
        discountValue: "18%",
        textToShow: "Headset for Best Delivery Deal OFF!",
      ),
    ];
    return slidersData;
  }
}
