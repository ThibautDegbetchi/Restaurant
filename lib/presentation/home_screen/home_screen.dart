import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:restaurant/core/utils/color_constant.dart';
import 'package:restaurant/presentation/home_screen/controller/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset(
                        ImageConstant.imgCoffeeCupSaucerTeaspoon,
                        fit: BoxFit.cover,
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: ColorConstant.chocolate,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: ColorConstant.deep,
                              size: 15,
                            ),
                            Text(
                              "msg_location".tr,
                              style: TextStyle(
                                  color: ColorConstant.black, fontSize: 15),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: ColorConstant.black,
                              size: 15,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "msg_welcome".tr,
                              style: TextStyle(
                                  color: ColorConstant.black, fontSize: 15),
                            ),
                            Text(
                              "msg_thibaut".tr,
                              style: TextStyle(
                                  color: ColorConstant.grey, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30,
                      width: 35,
                      // color: Colors.red,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0.7,
                            right: 0.1,
                            bottom: 0.3,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 20,
                                )),
                          ),
                          Positioned(
                              right: 3,
                              // top: 1,
                              child: Container(
                                height: 15,
                                width: 15,
                                padding: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    color: ColorConstant.deep,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Text(
                                  "msg_nb".tr,
                                  style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: 10),
                                ),
                              ))
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    color: ColorConstant.deep.withOpacity(0.11),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shield_moon_outlined,
                      color: ColorConstant.deep,
                      size: 22,
                    ),
                    VerticalDivider(
                      color: ColorConstant.deep,
                      indent: 4,
                      endIndent: 6,
                    ),
                    Text("msg_got_discount_coupon".tr,
                        style:
                            TextStyle(color: ColorConstant.deep, fontSize: 14)),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: ColorConstant.deep,
                      size: 18,
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
            child: CarouselSlider.builder(
              carouselController: controller.buttonCarouselController,
              itemCount: 2,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    controller.currentIndex.value = index;
                  },
                  autoPlayInterval: const Duration(seconds: 5)),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                height: size.height * 0.4,
                width: size.width * 0.75,
                child: Text(itemIndex.toString()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Obx(() => AnimatedSmoothIndicator(
                  // controller: controller.pageController, // PageController
                  count: 2,
                  effect: SlideEffect(
                      spacing: 8.0,
                      radius: 6.0,
                      dotWidth: 21.0,
                      dotHeight: 8.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      type: SlideType.normal,
                      activeDotColor:
                          ColorConstant.deep), // your preferred effect
                  onDotClicked: (index) {
                    print(index);
                    controller.buttonCarouselController.jumpToPage(index);
                  },
                  activeIndex: controller.currentIndex.value,
                )),
          )
        ],
      ),
    ));
  }
}
