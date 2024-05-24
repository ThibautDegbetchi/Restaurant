import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/splash_screen/bindings/splash_binding.dart';
import 'package:restaurant/routes/app_routes.dart';

import 'localization/app_localization.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: theme,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'Restaurant',
      initialBinding: SplashBinding(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
