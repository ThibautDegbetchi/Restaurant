import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:restaurant/presentation/detail_screen/controller/detail_contrller.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets/custom_button.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});
  DetailController controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Get.arguments[0].name.value,
                        style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Get.arguments[0].subDescription.value,
                        style: TextStyle(
                          color: ColorConstant.black,
                          fontSize: 12,
                        ),
                      ),
                      Image.asset(Get.arguments[0].image.value),
                    ],
                  ),
                ),
                Text(
                  "msg_description".tr,
                  style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                GetBuilder<DetailController>(builder: (controller) {
                  return buildText(Get.arguments[0].description.value);
                }),
                buildbutton(),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("msg_price".tr + ": ",
                            style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Text("\$" + Get.arguments[0].price.toString(),
                            style: TextStyle(
                                color: ColorConstant.deep,
                                fontSize: 17,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 10),
                          Text(Get.arguments[0].numberStars.value.toString(),
                              style: TextStyle(
                                  color: ColorConstant.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
                //list of reviews
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: SizedBox(
                    height: size.height * 0.05,
                    width: size.width,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images_coffee.png'),
                            radius: 15,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images_coffee.png'),
                            radius: 15,
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images_coffee.png'),
                            radius: 15,
                          ),
                        ),
                        Positioned(
                          left: 60,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images_coffee.png'),
                            radius: 15,
                          ),
                        ),
                        Positioned(
                          left: 80,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images_coffee.png'),
                            radius: 15,
                          ),
                        ),
                        Positioned(
                          left: 100,
                          child: CircleAvatar(
                            backgroundColor: ColorConstant.whiteA700,
                            child: Text(
                              '5k',
                            ),
                            radius: 15,
                          ),
                        ),
                        Positioned(
                            left: 140,
                            top: 5,
                            child: Row(
                              children: [
                                SizedBox(
                                    width:
                                        5), // Espace entre les avatars et le texte
                                // Section du texte des reviews
                                Text(
                                  'Reviews',
                                  style: TextStyle(
                                    color: ColorConstant.grey,
                                  ),
                                )
                              ],
                            ))
                      ],
                      //overflow: Overflow.visible,
                    ),
                  ),
                ),
                Container(
                    height: size.height * 0.054,
                    width: size.width * 0.9,
                    margin: getMarginOrPadding(all: 15),
                    child: CustomButton(
                      shape: ButtonShape.RoundedBorder15,
                      text: 'lbl_get_it'.tr,
                      suffixWidget: Icon(
                        Icons.navigate_next,
                        color: ColorConstant.whiteA700,
                      ),
                      onTap: () {
                        // Get.offNamedUntil(
                        //     AppRoutes.loginScreen, (route) => false);
                      },
                    )),
              ],
            ),
          ),
        ));
  }

  Widget buildText(String text) {
    final maxLines = controller.isReadMore ? null : 3;
    final overflow =
        controller.isReadMore ? TextOverflow.visible : TextOverflow.ellipsis;
    return GetBuilder<DetailController>(builder: (controller) {
      return Text(
        text,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(color: ColorConstant.black, fontSize: 15),
      );
    });
  }

  Widget buildbutton() => GetBuilder<DetailController>(
        builder: (controller) {
          return InkWell(
              onTap: () {
                controller.isReadMore = !controller.isReadMore;
                controller.update();
              },
              child: Text(
                controller.isReadMore ? 'Read Less' : 'Read More',
                style: TextStyle(fontSize: 15, color: ColorConstant.deep),
              ));
        },
      );
}
