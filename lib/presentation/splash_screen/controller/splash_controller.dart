import 'package:get/get.dart';
import 'package:restaurant/presentation/onboarding_screen/controller/Onboarding_controller.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      Get.lazyPut(() => OnboardingController());
      // String token = await getSharedPrefReturn(prefToken);
      // if (token.isNull || token.isEmpty || token == "null") {
      //   Get.offNamedUntil(AppRoutes.welcomeScreen, (route) => false);
      // } else {
      //   // findAuthUser();
      // }
    });
    super.onReady();
  }
}
