import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/suggestion_extension.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/ProductCategoryController/product_category_controller.dart';
import 'package:simple_ecommerce/Feature/Product/Presentation/Screens/product_detail_screen.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(productCategoryProvider);

    final category =
        ref.watch(productCategoryProvider.notifier).getCurrentCategory();
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (builder) =>
                    ProductDetailScreen(productModel: category[index]),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: context.getWidithOfCategoryItem,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        image: DecorationImage(
                          image: AssetImage(
                            category[index].imageUrl,
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text(
                      category[index].name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: context.getSuggestCategoryFontSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
