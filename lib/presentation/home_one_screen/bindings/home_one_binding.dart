import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:restaurant/presentation/home_one_screen/controller/home_one_controller.dart';

class HomeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOneController());
  }
}
