import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Screens/product_added_cart_screen.dart';
import '../../Feature/Product/Controller/BottomBarController/bottombar_controller.dart';
import '/Cores/Theme/app_theme.dart';

//
import '../../Feature/Product/Presentation/Components/homescreencomponents/categories_list.dart';
import '../../Feature/Product/Presentation/Components/homescreencomponents/product_grid.dart';
import '../../Feature/Product/Presentation/Components/homescreencomponents/product_title.dart';
import '../Components/product_bottom_bar.dart';
import '../../Feature/Product/Presentation/Components/homescreencomponents/search_bar.dart';
import '../../Feature/Product/Presentation/Components/homescreencomponents/slider.dart';

class HomeScreen extends ConsumerWidget {
  // notificatin button
  Widget _noficationButton() => Container(
        padding: const EdgeInsets.all(5.0),
        margin: EdgeInsets.only(top: 4, right: 6, left: 5),
        height: 40,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(5),
              backgroundColor: AppTheme.itemBackground,
            ),
            onPressed: () {},
            child: Icon(
              Icons.notifications_active,
              color: Colors.black,
              size: 30,
            )),
      );

// app bar
  PreferredSizeWidget _appBar() => AppBar(
        toolbarHeight: 70,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 4),
          child: CircleAvatar(
              backgroundColor: AppTheme.itemBackground,
              child: Image.asset("assets/icons/menu_dots.png")),
        ),
        actions: [_noficationButton()],
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(bottomBarProvider);
    return currentTab == 3
        ? ProductAddedCart()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: _appBar(),
            body: ListView(
              children: [
                ProductSearchBar(),
                SliderCode(),
                ProductTitle(leadingTitle: "Recommended"),
                CategoriesList(),
                ProductTitle(
                  leadingTitle: "Special for you",
                  trailingTitle: "See All",
                ),
                ProductGrid()
              ],
            ),
            bottomNavigationBar: ProductBottomBar(),
          );
  }
}
