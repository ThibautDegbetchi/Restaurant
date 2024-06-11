import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:restaurant/presentation/favorit_screen/controller/favorit_controller.dart';
import 'package:restaurant/presentation/home_screen/controller/home_controller.dart';

import '../../core/utils/color_constant.dart';

class FavoritScreen extends StatelessWidget {
  FavoritScreen({super.key});
  FavoritController controller = Get.put(FavoritController());
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "msg_favorit".tr,
            style: TextStyle(
                fontSize: 18,
                color: ColorConstant.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
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
                            icon: const Icon(
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
        body: Stack(
          children: [
            Container(
              child: Obx(() => homeController.favorit.length == 0
                  ? Center(
                      child: Text("msg_no_favorit".tr),
                    )
                  : ListView.separated(
                      itemCount: homeController.favorit.length,
                      itemBuilder: (BuildContext context, int index) {
                        var model = homeController.favorit[index];
                        return Container(
                          // color: Colors.red,
                          // height: size.height * 0.1,
                          // width: size.width * 0.4,
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorConstant.grey.withOpacity(0.5)),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.15,
                                width: size.width * 0.5,
                                child: Image.asset(model.image.value),
                              ),
                              Column(
                                children: [
                                  Text(
                                    model.name.value,
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    model.subDescription.value,
                                    style: TextStyle(
                                      color: ColorConstant.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 14,
                                      ),
                                      Text(
                                        model.numberStars.value.toString(),
                                        style: TextStyle(
                                          color: ColorConstant.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "\$" + model.price.value.toString(),
                                    style: TextStyle(
                                      color: ColorConstant.deep,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 5,
                        );
                      },
                    )),
            )
          ],
        ));
  }
}
