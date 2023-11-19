import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_ecommerce/Feature/Product/Controller/AddedToCartController/cart_controller.dart';
import 'package:simple_ecommerce/Models/product_model.dart';

void showDialogForDeleting(
    BuildContext context, WidgetRef ref, ProductModel item) {
  showDialog(
      context: context,
      barrierColor: Colors.transparent,
      useSafeArea: true,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Text(
            "Do you want to delete this item permanently? ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: () {
                  ref.read(cartControllerProvider.notifier).deleteItem(item);
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Yes",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: Navigator.of(context).pop,
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ],
        );
      });
}
