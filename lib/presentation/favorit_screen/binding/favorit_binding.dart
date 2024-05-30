import 'package:get/get.dart';
import 'package:restaurant/presentation/favorit_screen/controller/favorit_controller.dart';

class FavoritBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritController());
  }
}
