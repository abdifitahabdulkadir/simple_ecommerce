import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/DummyData/review_data.dart';
import 'package:simple_ecommerce/Cores/ResponsiveExtensions/medium_extension.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';

class ProductItemReview extends StatelessWidget {
  const ProductItemReview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme.itemBackground,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      reviews[index].user.profileUrl,
                    ),
                  ),
                  title: SizedBox(
                    width: 150,
                    child: Text(
                      reviews[index].user.usernamae,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    reviews[index].user.role,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  width: context.widthOfScreen * 0.4,
                  padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                  child: Text(
                    reviews[index].value,
                    maxLines: 4,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
