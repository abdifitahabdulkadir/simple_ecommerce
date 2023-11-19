import 'package:flutter/material.dart';
import 'package:simple_ecommerce/Cores/Theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/Feature/Product/Controller/BottomBarController/bottombar_controller.dart';

class EmtpyCard extends ConsumerWidget {
  const EmtpyCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          Image.asset(
            "assets/icons/emptyCard.jpg",
            width: double.maxFinite,
          ),
          InkWell(
            onTap: () {
              ref.read(bottomBarProvider.notifier).setUpdate(0);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite - 100,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.secondaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Continue Shoping",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
