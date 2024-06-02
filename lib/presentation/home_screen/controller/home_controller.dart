import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselController buttonCarouselController = CarouselController();
  PageController pageController = PageController();
  RxInt currentIndex = 0.obs;
}
