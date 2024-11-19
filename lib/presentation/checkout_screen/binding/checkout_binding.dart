import 'package:get/get.dart';
import 'package:restaurant/presentation/checkout_screen/controller/checkout_controller.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutController());
  }
}
