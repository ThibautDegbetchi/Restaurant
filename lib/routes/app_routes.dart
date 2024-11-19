import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:restaurant/presentation/detail_screen/binding/detail_binding.dart';
import 'package:restaurant/presentation/detail_screen/detail_screen.dart';
import 'package:restaurant/presentation/favorit_screen/binding/favorit_binding.dart';
import 'package:restaurant/presentation/favorit_screen/favorit_screen.dart';
import 'package:restaurant/presentation/location_screen/binding/location_binding.dart';
import 'package:restaurant/presentation/location_screen/location_screen.dart';
import 'package:restaurant/presentation/login_screen/binding/login_binding.dart';
import 'package:restaurant/presentation/login_screen/login_screen.dart';
import 'package:restaurant/presentation/profile_screen/binding/porfile_binding.dart';
import 'package:restaurant/presentation/profile_screen/profile_screen.dart';
import 'package:restaurant/presentation/register_screen/binding/register_binding.dart';
import 'package:restaurant/presentation/register_screen/register_screen.dart';
import 'package:restaurant/presentation/splash_screen/binding/splash_binding.dart';
import 'package:restaurant/presentation/splash_screen/splash_screen.dart';
// import 'package:restaurant/presentation/splash_screen/bindings/onboarding_binding.dart';

import '../presentation/checkout_screen/binding/checkout_binding.dart';
import '../presentation/checkout_screen/checkout_screen.dart';
import '../presentation/home_one_screen/bindings/home_one_binding.dart';
import '../presentation/home_one_screen/home_one_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/onboarding_screen/Onboarding_screen.dart';
import '../presentation/onboarding_screen/bindings/onboarding_binding.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String onboardingScreen = '/onboarding_screen';
  static const String homeOneScreen = '/home_one_screen';
  static const String homeScreen = '/home_screen';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';

  static const String detailScreen = '/detail_screen';
  static const String favoritScreen = '/favorit_screen';
  static const String profileScreen = '/profile_screen';
  static const String locationScreen = '/location_screen';
  static const String checkoutScreen = '/checkout_screen';

  static List<GetPage> pages = [
    GetPage(
        name: initialRoute,
        page: () => SplashScreen(),
        bindings: [SplashBinding()]),
    GetPage(
        name: onboardingScreen,
        page: () => const OnboardingScreen(),
        bindings: [OnboardingBinding()]),
    GetPage(
        name: homeOneScreen,
        page: () => HomeOneScreen(),
        bindings: [HomeOneBinding()]),
    GetPage(
        name: homeScreen, page: () => HomeScreen(), bindings: [HomeBinding()]),
    GetPage(
        name: loginScreen,
        page: () => LoginScreen(),
        bindings: [LoginBinding()]),
    GetPage(
        name: registerScreen,
        page: () => RegisterScreen(),
        bindings: [RegisterBinding()]),
    GetPage(
        name: detailScreen,
        page: () => DetailScreen(),
        bindings: [DetailBinding()]),
    GetPage(
        name: profileScreen,
        page: () => ProfileScreen(),
        bindings: [ProfileBinding()]),
    GetPage(
        name: favoritScreen,
        page: () => FavoritScreen(),
        bindings: [FavoritBinding()]),
    GetPage(
        name: locationScreen,
        page: () => LocationScreen(),
        bindings: [LocationBinding()]),
    GetPage(
        name: checkoutScreen,
        page: () => CheckoutScreen(),
        bindings: [CheckoutBinding()]),
  ];
}
