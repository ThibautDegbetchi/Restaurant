import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product {
  Product(
      {required this.name,
      required this.image,
      required this.description,
      required this.isFavorit,
      required this.isLocked,
      required this.numberStars,
      required this.price,
      required this.subDescription});
  RxString image;
  RxString subDescription;
  RxString description;
  RxDouble price;
  RxDouble numberStars;
  RxBool isFavorit;
  RxBool isLocked;
  RxString name;
}
