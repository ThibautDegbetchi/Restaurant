import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant/routes/app_routes.dart';
import 'core/utils/initial_bindings.dart';
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
      fallbackLocale: Locale('enUs', 'enUs'),
      title: 'Restaurant',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
