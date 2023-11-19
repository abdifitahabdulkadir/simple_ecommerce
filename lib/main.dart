import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Cores/Routing/app_routing.dart';
import 'Cores/Theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => ProviderScope(
        child: const EcommerceApp(),
      ),
    ),
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getLightTheme(),
        routes: AppRouting.configAppRouting(context));
  }
}
