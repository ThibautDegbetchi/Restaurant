import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:restaurant/presentation/splash_screen/bindings/splash_binding.dart';

import '../presentation/home_one_screen/bindings/home_one_binding.dart';
import '../presentation/home_one_screen/home_one_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String homeOneScreen = '/home_one_screen';
  static const String homeScreen = '/home_screen';

  static List<GetPage> pages = [
    GetPage(
        name: initialRoute,
        page: () => SplashScreen(),
        bindings: [SplashBinding()]),
    GetPage(
        name: homeOneScreen,
        page: () => HomeOneScreen(),
        bindings: [HomeOneBinding()]),
    GetPage(
        name: homeScreen, page: () => HomeScreen(), bindings: [HomeBinding()]),
    // GetPage(
    //     name: homeScreen,
    //     page: () => HomeScreen(),
    //     bindings: [
    //       HomeBinding()
    //     ]),
  ];
}
