import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/medium_extension.dart';

extension SuggestionCategoriesExtension<T> on BuildContext {
  // get category font size for differetn screens
  double get getSuggestCategoryFontSize {
    if (this.isSmallMobile)
      return 13;
    else {
      return 18;
    }
  }

  // widith of cateogry item
  double get getWidithOfCategoryItem {
    if (this.isSmallMobile)
      return this.widthOfScreen * 0.15;
    else {
      return this.widthOfScreen * 0.18;
    }
  }
}
