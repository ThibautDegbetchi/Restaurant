import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import '../../../data/models/product_model.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  CarouselController buttonCarouselController = CarouselController();
  PageController pageController = PageController();
  late TabController tabController;
  RxInt currentIndex = 0.obs;
  List products = [
    Product(
        image: ImageConstant.imgLogo1.obs,
        isFavorit: false.obs,
        name: "Expresso".obs,
        subDescription: "Expresso coffee".obs,
        description:
            "Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee."
                .obs,
        numberStars: 4.5.obs,
        price: 9.00.obs,
        isLocked: true.obs),
    Product(
        image: ImageConstant.imgLogo1.obs,
        isFavorit: false.obs,
        name: "Expresso".obs,
        subDescription: "Expresso coffee".obs,
        description:
            "Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee."
                .obs,
        numberStars: 4.5.obs,
        price: 9.00.obs,
        isLocked: true.obs),
    Product(
        image: ImageConstant.imgLogo1.obs,
        isFavorit: false.obs,
        name: "Expresso".obs,
        subDescription: "Expresso coffee".obs,
        description:
            "Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee."
                .obs,
        numberStars: 4.5.obs,
        price: 9.00.obs,
        isLocked: true.obs),
    Product(
        image: ImageConstant.imgLogo1.obs,
        isFavorit: false.obs,
        name: "Expresso".obs,
        subDescription: "Expresso coffee".obs,
        description:
            "Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee."
                .obs,
        numberStars: 4.5.obs,
        price: 9.00.obs,
        isLocked: true.obs),
    Product(
        image: ImageConstant.imgLogo1.obs,
        isFavorit: false.obs,
        name: "Expresso".obs,
        subDescription: "Expresso coffee".obs,
        description:
            "Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee."
                .obs,
        numberStars: 4.5.obs,
        price: 9.00.obs,
        isLocked: true.obs),
    Product(
        image: ImageConstant.imgLogo1.obs,
        isFavorit: false.obs,
        name: "Expresso".obs,
        subDescription: "Expresso coffee".obs,
        description:
            "Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee.Expresso,(Italian:\"fast,expresso\") a strong brew of coffee produced by forcing boilled water under pressure through finely ground coffee."
                .obs,
        numberStars: 4.5.obs,
        price: 9.00.obs,
        isLocked: true.obs),
  ];
  List favorit = [].obs;
  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }
}
