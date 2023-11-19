import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/medium_extension.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/sliders_extension.dart';
import 'package:simple_ecommerce/Models/sliders_model.dart';

import '../../../../../Cores/Theme/app_theme.dart';

class EachItemSlider extends StatelessWidget {
  final List<SliderModel> sliders;
  final int index;
  const EachItemSlider({super.key, required this.index, required this.sliders});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: context.widthOfScreen * 0.3,
              child: Text(
                sliders[index].textToShow,
                textAlign: TextAlign.left,
                maxLines: 5,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: context.getTextHeighFactor(),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Upto",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.secondaryColor,
                  ),
                  child: Text(
                    "Shop now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Image.asset(
          sliders[index].productModel.imageUrl,
          fit: BoxFit.cover,
          width: context.getSliderImageWidth(),
        ),
      ],
    );
  }
}
