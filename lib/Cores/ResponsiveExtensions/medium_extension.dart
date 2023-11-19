import 'package:flutter/material.dart';

extension MediumSizesExtension<T> on BuildContext {
  bool get isMediumMobile => heightOfScreen <= 990.0 && widthOfScreen >= 400;

  bool get isSmallMobile =>
      heightOfScreen < 830.0 && widthOfScreen >= 300.0 && widthOfScreen < 400;

  double get widthOfScreen => MediaQuery.of(this).size.width;

  double get heightOfScreen => MediaQuery.of(this).size.height;

  Size get sizeOfScreen => MediaQuery.of(this).size;
}
