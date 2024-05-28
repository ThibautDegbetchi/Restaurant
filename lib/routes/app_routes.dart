import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:restaurant/presentation/login_screen/binding/login_binding.dart';
import 'package:restaurant/presentation/login_screen/login_screen.dart';
import 'package:restaurant/presentation/register_screen/binding/register_binding.dart';
import 'package:restaurant/presentation/register_screen/register_screen.dart';
import 'package:restaurant/presentation/splash_screen/binding/splash_binding.dart';
import 'package:restaurant/presentation/splash_screen/splash_screen.dart';
// import 'package:restaurant/presentation/splash_screen/bindings/onboarding_binding.dart';

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

  static List<GetPage> pages = [
    GetPage(
        name: initialRoute,
        page: () => SplashScreen(),
        bindings: [SplashBinding()]),
    GetPage(
        name: onboardingScreen,
        page: () => OnboardingScreen(),
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
  ];
}
