import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/profile_screen/controller/profile_controller.dart';

import '../../core/utils/color_constant.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "msg_profile".tr,
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
          children: [Container()],
        ));
  }
}
