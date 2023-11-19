import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/medium_extension.dart';

// slider responsivenss
extension SliderExtension<T> on BuildContext {
  // slider width
  double getSliderWidth() {
    if (this.isSmallMobile)
      return widthOfScreen;
    else
      return widthOfScreen;
  }

// slider hight
  double getSliderHight() {
    if (this.isSmallMobile)
      return heightOfScreen * 0.35;
    else
      return heightOfScreen * 0.4;
  }

  // slider image width different sizez.
  double getSliderImageWidth() {
    if (this.isSmallMobile)
      return widthOfScreen * 0.4;
    else {
      return widthOfScreen * 0.5;
    }
  }

  // slider text height spacing factor for diffretn sizez
  double getTextHeighFactor() {
    if (this.isSmallMobile)
      return 1;
    else
      return 1.4;
  }
}
