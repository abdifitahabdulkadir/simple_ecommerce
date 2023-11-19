import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/BottomBarController/bottombar_controller.dart';
import '../../Cores/Theme/app_theme.dart';

class ProductBottomBar extends ConsumerWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CurvedNavigationBar(
        color: AppTheme.appBarBgColor,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.grey,
        height: 50,
        onTap: (value) {
          if (value == 3) {
            ref.watch(bottomBarProvider.notifier).setUpdate(value);
          }
        },
        items: [
          Icon(Icons.favorite_outline),
          Icon(Icons.home),
          Icon(Icons.shopping_cart),
          Icon(Icons.person_outline_outlined),
        ]);
  }
}
