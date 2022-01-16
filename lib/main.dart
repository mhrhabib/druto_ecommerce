import 'package:druto_ecommerce/pages/main/main_binding.dart';
import 'package:druto_ecommerce/routes/app_pages.dart';
import 'package:druto_ecommerce/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.TAKELOOK,
      getPages: AppPages.routes,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.zoom,
    );
  }
}
