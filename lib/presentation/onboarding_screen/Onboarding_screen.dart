import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/utils/color_constant.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:restaurant/widgets/custom_button.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import 'controller/Onboarding_controller.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                ColorConstant.deep,
                ColorConstant.deep400,
                ColorConstant.deep700,
                ColorConstant.deep900,
                ColorConstant.deep999
              ])),
          child: Stack(
            children: [
              Positioned(
                  top: 50,
                  left: 5,
                  child: Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgLogo),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                  top: 200,
                  left: 50,
                  child: Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                ImageConstant.imgCoffeeCupSaucerTeaspoon),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                  top: 490,
                  left: 90,
                  child: Text(
                    "msg_sub_description".tr,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  )),
              Positioned(
                  top: 530,
                  left: 10,
                  child: Container(
                    width: size.width * 0.9,
                    child: Text(
                      "msg_description_onboarding".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  )),
              Positioned(
                top: 670,
                child: Container(
                    height: size.height * 0.054,
                    width: size.width * 0.9,
                    margin: getMarginOrPadding(all: 15),
                    child: CustomButton(
                      shape: ButtonShape.RoundedBorder15,
                      text: "lbl_start".tr,
                      suffixWidget: Icon(
                        Icons.navigate_next,
                        color: ColorConstant.whiteA700,
                      ),
                      onTap: () {
                        Get.offNamedUntil(
                            AppRoutes.loginScreen, (route) => false);
                      },
                    )),
              )
            ],
          )),
    );
  }
}
