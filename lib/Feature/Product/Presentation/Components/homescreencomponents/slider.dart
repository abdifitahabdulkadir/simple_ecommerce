import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/sliders_extension.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/ProductCategoryController/product_category_controller.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/SliderController/slider_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Components/homescreencomponents/each_slider_item.dart';
import 'package:simple_ecommerce/Models/sliders_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderCode extends ConsumerStatefulWidget {
  const SliderCode({super.key});

  @override
  ConsumerState<SliderCode> createState() => _SliderCodeState();
}

class _SliderCodeState extends ConsumerState<SliderCode> {
  int currentIndex = 0;

  // dotos
  Widget _getSmoothDots(List<SliderModel> sliders) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
          child: AnimatedSmoothIndicator(
            count: sliders.length,
            activeIndex: currentIndex,
            effect: WormEffect(),
            onDotClicked: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      );

  // build fuctnon
  @override
  Widget build(BuildContext context) {
    final sliders = ref.read(sliderControllerProvider).getSlider();
    return Container(
      height: context.getSliderHight(),
      width: context.getSliderWidth(),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.itemBackground,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                pageSnapping: true,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    ref.read(productCategoryProvider.notifier).setUpdate(index);
                  });
                },
              ),
              itemCount: sliders.length,
              itemBuilder: (context, index, activeIndex) {
                return EachItemSlider(
                  index: index,
                  sliders: sliders,
                );
              }),
          _getSmoothDots(sliders),
        ],
      ),
    );
  }
}
