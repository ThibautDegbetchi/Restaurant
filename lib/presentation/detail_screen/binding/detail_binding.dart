import 'package:get/get.dart';
import 'package:restaurant/presentation/detail_screen/controller/detail_contrller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
