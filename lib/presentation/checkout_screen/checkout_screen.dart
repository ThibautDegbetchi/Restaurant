import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/checkout_screen/controller/checkout_controller.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.6,
            child: ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                int val = 0;
                return productCard('Expresso', 'Expresso Coofee',
                    'assets/images/images_coffee.png', 12, context, index, val);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 5,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'msg_order_info'.tr,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          'msg_sub_total'.tr,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          '\$21.50',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          'msg_delivery'.tr,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          '\$3.50',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          'msg_discount_text'.tr,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          '\$5.50',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          'msg_total'.tr,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          '\$30.00',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: size.height * 0.054,
              width: size.width * 0.8,
              // margin: getMarginOrPadding(all: 22),
              child: CustomButton(
                shape: ButtonShape.RoundedBorder15,
                text: 'lbl_get_it'.tr,
                onTap: () {},
              )),
        ],
      ),
    );
  }
}

Widget productCard(String title, String subTitle, String image, double price,
    BuildContext context, index, val) {
  return GetBuilder<CheckoutController>(builder: (controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: SizedBox(
        height: size.height * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  height: 60.0,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  title,
                  style: const TextStyle(fontSize: 15),
                  maxLines: 1,
                ),
                AutoSizeText(
                  subTitle,
                  style: const TextStyle(fontSize: 11),
                  maxLines: 1,
                ),
                AutoSizeText(
                  '\$${price}',
                  style: const TextStyle(fontSize: 15),
                  maxLines: 1,
                )
              ],
            ),
            IconButton(
              onPressed: () {
                controller.products.remove(index);
                controller.update();
              },
              icon: Icon(
                CupertinoIcons.trash_fill,
                color: ColorConstant.red,
                size: 15,
              ),
            ),
            SizedBox(
              height: size.height * 0.18,
              // width: size.width * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        val += 1;
                        controller.update();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 12,
                      )),
                  Text(
                    '$val',
                    style: const TextStyle(fontSize: 12),
                  ),
                  IconButton(
                      onPressed: () {
                        if (val > 0) {
                          val -= 1;
                        }
                        controller.update();
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 12,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  });
}
