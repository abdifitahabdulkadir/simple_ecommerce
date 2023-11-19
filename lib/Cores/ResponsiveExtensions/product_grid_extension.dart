import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/medium_extension.dart';

extension ProductGridExtension on BuildContext {
  double get productGridiImageWidth {
    if (this.isSmallMobile)
      return 100;
    else if (this.isMediumMobile) return 150;
    return 200;
  }
}
