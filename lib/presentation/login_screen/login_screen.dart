import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/app_export.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../core/utils/color_constant.dart';
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
                      ),
                      Container(
                        height: size.height * 0.29,
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
                                          child: CustomTextFormField(
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
                                            suffix: Icon(
                                              Icons.email,
                                              color: ColorConstant.deep,
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Entrez un mail valide';
                                              }
                                              return null;
                                            },
                                          ),
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
                                                  controller.seePassword.value =
                                                      !controller
                                                          .seePassword.value;
                                                },
                                                child: controller
                                                        .seePassword.value
                                                    ? Icon(
                                                        Icons.visibility,
                                                        color:
                                                            ColorConstant.deep,
                                                      )
                                                    : Icon(
                                                        Icons.visibility_off,
                                                        color:
                                                            ColorConstant.deep,
                                                      ),
                                              ),
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
                                            suffix: Icon(
                                              Icons.phone,
                                              color: ColorConstant.deep,
                                            ),
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
                                                      ? Icon(
                                                          Icons.visibility,
                                                          color: ColorConstant
                                                              .deep,
                                                        )
                                                      : Icon(
                                                          Icons.visibility_off,
                                                          color: ColorConstant
                                                              .deep,
                                                        ),
                                                ),
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
                                      SizedBox(
                                        height: 15,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                'msg_forgot_password'.tr,
                                style: TextStyle(
                                    color: ColorConstant.grey, fontSize: 10),
                              )),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.registerScreen);
                            },
                            child: Text(
                              'msg_have_account'.tr,
                              style: TextStyle(
                                  color: ColorConstant.deep900, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      RoundedLoadingButton(
                          width: size.width * 0.9,
                          height: size.height * 0.054,
                          color: ColorConstant.deep,
                          borderRadius: 14,
                          controller: controller.btnControlller,
                          onPressed: controller.doSomething,
                          child: Text(
                            'msg_login'.tr,
                            style: TextStyle(color: ColorConstant.whiteA700),
                          ))
                    ],
                  ),
                ))));
  }
}
