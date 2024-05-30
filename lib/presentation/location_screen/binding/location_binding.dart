import 'package:get/get.dart';
import 'package:restaurant/presentation/location_screen/controller/location_controller.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationController());
  }
}
