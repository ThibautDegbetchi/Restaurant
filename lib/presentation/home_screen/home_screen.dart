import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:restaurant/core/utils/color_constant.dart';
import 'package:restaurant/presentation/home_screen/controller/home_controller.dart';
import 'package:restaurant/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/models/product_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            child: Image.asset(
              ImageConstant.imgCoffeeCupSaucerTeaspoon,
              fit: BoxFit.cover,
            ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                // color: ColorConstant.chocolate,
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
          title: Column(
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
                    style: TextStyle(color: ColorConstant.black, fontSize: 15),
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
                    style: TextStyle(color: ColorConstant.black, fontSize: 15),
                  ),
                  Text(
                    "msg_thibaut".tr,
                    style: TextStyle(color: ColorConstant.grey, fontSize: 15),
                  ),
                ],
              )
            ],
          ),
          actions: [
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
                                  color: ColorConstant.whiteA700, fontSize: 10),
                            ),
                          ))
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: ColorConstant.deep.withOpacity(0.11),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
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
                            style: TextStyle(
                                color: ColorConstant.deep, fontSize: 14)),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: ColorConstant.deep,
                          size: 18,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 25,
              ),
              CarouselSlider.builder(
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
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    height: size.height * 0.4,
                    width: size.width * 0.9,
                    padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: ColorConstant.grey.withOpacity(0.1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_you_want".tr,
                              style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "msg_deel".tr,
                              style: TextStyle(
                                color: ColorConstant.grey,
                                fontSize: 14,
                              ),
                            ),
                            Container(
                                height: size.height * 0.054,
                                width: size.width * 0.3,
                                margin: getMarginOrPadding(bottom: 15),
                                child: CustomButton(
                                  variant: ButtonVariant.CardShadow,
                                  shape: ButtonShape.RoundedBorder15,
                                  text: 'lbl_buy'.tr,
                                  onTap: () {
                                    print("Clicked on Buy now");
                                    // Get.offNamedUntil(
                                    //     AppRoutes.loginScreen, (route) => false);
                                  },
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                height: size.height * 0.03,
                                width: size.width * 0.15,
                                margin: getMarginOrPadding(bottom: 15),
                                padding: getPadding(left: 5),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'lbl_price'.tr,
                                  style: TextStyle(
                                      color: ColorConstant.deep400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 148,
                              width: 118,
                              // color: Colors.grey,
                              child: Image.asset(
                                ImageConstant.imgCoffeeCupSaucerTeaspoon,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        )
                      ],
                    ) /*Text(itemIndex.toString())*/,
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Obx(() => AnimatedSmoothIndicator(
                      count: 2,
                      effect: SlideEffect(
                          spacing: 8.0,
                          radius: 6.0,
                          dotWidth: 12.0,
                          dotHeight: 12.0,
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
              ),
              TabBar(controller: controller.tabController, tabs: [
                Tab(text: "msg_feature".tr),
                Tab(
                  text: "msg_cold_brew".tr,
                ),
                Tab(
                  text: "msg_expresso".tr,
                )
              ]),
              Container(
                height: 300,
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: TabBarView(
                            controller: controller.tabController,
                            children: [
                              gridView(context),
                              gridView(context),
                              gridView(context)
                            ]))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget gridView(
    BuildContext context,
  ) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      itemCount: controller.products.length,
      mainAxisSpacing: 15,
      crossAxisSpacing: 8,
      itemBuilder: (context, index) {
        var model = controller.products[index];
        return Obx(() => InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.detailScreen, arguments: [model]);
              },
              child: Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.only(bottom: 5, left: 5, right: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Stack(
                          children: [
                            Image.asset(
                              ImageConstant.imgLogo1,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                                right: 1,
                                top: 1,
                                child: IconButton(
                                  onPressed: () {
                                    model.isFavorit.value =
                                        !model.isFavorit.value;
                                  },
                                  icon: model.isFavorit.value
                                      ? Icon(Icons.favorite)
                                      : Icon(Icons.favorite_border),
                                  color: model.isFavorit.value
                                      ? ColorConstant.pink
                                      : ColorConstant.black,
                                ))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                model.name.value,
                                style: TextStyle(
                                    color: ColorConstant.black, fontSize: 15),
                              ),
                              Text(
                                model.subDescription.value,
                                style: TextStyle(
                                    color: ColorConstant.grey, fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 8,
                              ),
                              Text(
                                model.numberStars.value.toString(),
                                style: TextStyle(
                                    color: ColorConstant.black, fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$" + model.price.value.toString(),
                            style: TextStyle(
                                color: ColorConstant.deep, fontSize: 15),
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: model.isLocked.value
                                    ? ColorConstant.black
                                    : ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(15)),
                            child: model.isLocked.value
                                ? Icon(
                                    Icons.lock_outline,
                                    color: ColorConstant.whiteA700,
                                  )
                                : Icon(
                                    Icons.lock_open_outlined,
                                    color: ColorConstant.black,
                                  ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
      crossAxisCount: 2,
      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
    );
  }
}
