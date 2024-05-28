import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../core/utils/color_constant.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  // LoginController controller = Get.put(LoginController());
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
                height: size.height,
                width: size.width,
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.1,
                        width: size.width,
                        margin: getMarginOrPadding(top: size.height * 0.2),
                        child: Image.asset(ImageConstant.imgLogo),
                      ),
                      Text(
                        'msg_login'.tr,
                        style: TextStyle(
                          color: ColorConstant.deep,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TabBar(
                        controller: controller.tabController,
                        tabs: [
                          Tab(
                            text: 'lbl_email'.tr,
                          ),
                          Tab(
                            text: 'lbl_phone'.tr,
                          )
                        ],
                        labelColor: ColorConstant.black,
                        indicatorColor: ColorConstant.deep,
                      ),
                      Container(
                        height: size.height * 0.26,
                        child: Column(
                          children: [
                            Expanded(
                              child: TabBarView(
                                controller: controller.tabController,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10, top: 30),
                                        child: Text(
                                          'lbl_email'.tr,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10),
                                        child: Container(
                                          height: 50,
                                          child: Obx(() => CustomTextFormField(
                                                width: size.width * 0.9,
                                                controller:
                                                    controller.emailController,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                hintText:
                                                    'thibautdegbetchi@gmail.com',
                                                hintStyle: TextStyle(
                                                    color: ColorConstant.grey,
                                                    fontSize: 14),
                                                autofocus: false,
                                                suffix: controller
                                                        .setMailIconColor.value
                                                    ? Icon(
                                                        Icons.email,
                                                        color:
                                                            ColorConstant.deep,
                                                      )
                                                    : Icon(
                                                        Icons.email,
                                                        color:
                                                            ColorConstant.grey,
                                                      ),
                                                onChange: (value) {
                                                  if (value.length != 0)
                                                    controller.setMailIconColor
                                                        .value = true;
                                                  else
                                                    controller.setMailIconColor
                                                        .value = false;
                                                },
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Entrez un mail valide';
                                                  }
                                                  return null;
                                                },
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10),
                                        child: Text(
                                          'lbl_password'.tr,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10),
                                        child: Obx(
                                          () => Container(
                                            height: 50,
                                            child: CustomTextFormField(
                                              controller:
                                                  controller.passwordController,
                                              width: size.width * 0.9,
                                              textInputType: TextInputType.text,
                                              hintText: 'msg_hint'.tr,
                                              hintStyle: TextStyle(
                                                  color: ColorConstant.grey,
                                                  fontSize: 14),
                                              autofocus: false,
                                              obscureText:
                                                  !controller.seePassword.value,
                                              suffix: InkWell(
                                                  onTap: () {
                                                    controller
                                                            .seePassword.value =
                                                        !controller
                                                            .seePassword.value;
                                                  },
                                                  child: controller
                                                          .seePassword.value
                                                      ? (controller
                                                              .setPassIconColor
                                                              .value
                                                          ? Icon(
                                                              Icons.visibility,
                                                              color:
                                                                  ColorConstant
                                                                      .deep,
                                                            )
                                                          : Icon(
                                                              Icons.visibility,
                                                              color:
                                                                  ColorConstant
                                                                      .grey,
                                                            ))
                                                      : (controller
                                                              .setPassIconColor
                                                              .value
                                                          ? Icon(
                                                              Icons
                                                                  .visibility_off,
                                                              color:
                                                                  ColorConstant
                                                                      .deep,
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .visibility_off,
                                                              color:
                                                                  ColorConstant
                                                                      .grey,
                                                            ))),
                                              onChange: (value) {
                                                if (value.length != 0)
                                                  controller.setPassIconColor
                                                      .value = true;
                                                else
                                                  controller.setPassIconColor
                                                      .value = false;
                                              },
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Entrez un mot de passe valide';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10, top: 30),
                                        child: Text(
                                          'lbl_phone_number'.tr,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Container(
                                          height: 50,
                                          child: CustomTextFormField(
                                            width: size.width * 0.9,
                                            controller:
                                                controller.phoneController,
                                            autofocus: false,
                                            textInputType: TextInputType.number,
                                            hintText: 'msg_number_hint'.tr,
                                            hintStyle: TextStyle(
                                                color: ColorConstant.grey,
                                                fontSize: 14),
                                            suffix: controller
                                                    .setPhoneIconColor.value
                                                ? Icon(
                                                    Icons.phone,
                                                    color: ColorConstant.deep,
                                                  )
                                                : Icon(
                                                    Icons.phone,
                                                    color: ColorConstant.grey,
                                                  ),
                                            onChange: (value) {
                                              if (value.length != 0)
                                                controller.setPhoneIconColor
                                                    .value = true;
                                              else
                                                controller.setPhoneIconColor
                                                    .value = false;
                                            },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Entrez un numéro valide';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10),
                                        child: Text(
                                          'lbl_password'.tr,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 10),
                                        child: Container(
                                          height: 50,
                                          child: Obx(() => CustomTextFormField(
                                                width: size.width * 0.9,
                                                controller: controller
                                                    .passwordController2,
                                                autofocus: false,
                                                textInputType:
                                                    TextInputType.text,
                                                hintText: 'msg_hint'.tr,
                                                hintStyle: TextStyle(
                                                    color: ColorConstant.grey,
                                                    fontSize: 14),
                                                obscureText: !controller
                                                    .seePassword.value,
                                                suffix: InkWell(
                                                  onTap: () {
                                                    controller
                                                            .seePassword.value =
                                                        !controller
                                                            .seePassword.value;
                                                  },
                                                  child: controller
                                                          .seePassword.value
                                                      ? (controller
                                                              .setPass2IconColor
                                                              .value
                                                          ? Icon(
                                                              Icons.visibility,
                                                              color:
                                                                  ColorConstant
                                                                      .deep,
                                                            )
                                                          : Icon(
                                                              Icons.visibility,
                                                              color:
                                                                  ColorConstant
                                                                      .grey,
                                                            ))
                                                      : (controller
                                                              .setPass2IconColor
                                                              .value
                                                          ? Icon(
                                                              Icons
                                                                  .visibility_off,
                                                              color:
                                                                  ColorConstant
                                                                      .deep,
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .visibility_off,
                                                              color:
                                                                  ColorConstant
                                                                      .grey,
                                                            )),
                                                ),
                                                onChange: (value) {
                                                  if (value.length != 0)
                                                    controller.setPass2IconColor
                                                        .value = true;
                                                  else
                                                    controller.setPass2IconColor
                                                        .value = false;
                                                },
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Entrez un mot de passe valide';
                                                  }
                                                  return null;
                                                },
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Text(
                                  'msg_forgot_password'.tr,
                                  // textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: ColorConstant.grey, fontSize: 10),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      RoundedLoadingButton(
                          width: size.width * 0.9,
                          height: size.height * 0.06,
                          color: ColorConstant.deep,
                          borderRadius: 14,
                          controller: controller.btnControlller,
                          onPressed: controller.doSomething,
                          child: Text(
                            'msg_login'.tr,
                            style: TextStyle(
                                color: ColorConstant.whiteA700, fontSize: 17),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: size.height * 0.054,
                          width: size.width * 0.9,
                          margin: getMarginOrPadding(all: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'msg_have_account'.tr,
                                style: TextStyle(
                                    color: ColorConstant.black, fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.registerScreen);
                                },
                                child: Text(
                                  'lbl_subscribe'.tr,
                                  style: TextStyle(
                                      color: ColorConstant.deep, fontSize: 16),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ))));
  }
}
