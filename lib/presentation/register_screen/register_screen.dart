import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/register_screen/controller/register_controller.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_text_form_field.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  const RegisterScreen({super.key});

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
                      margin: getMarginOrPadding(top: size.height * 0.05),
                      child: Image.asset(ImageConstant.imgLogo),
                    ),
                    Text(
                      'msg_register'.tr,
                      style: TextStyle(
                        color: ColorConstant.deep,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 15, right: 10, top: 30),
                              child: Text(
                                'lbl_last_name'.tr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                child: Container(
                                  height: 50,
                                  child: CustomTextFormField(
                                    width: size.width * 0.9,
                                    controller: controller.nameController,
                                    textInputType: TextInputType.text,
                                    hintText: 'Degbetchi',
                                    prefix: Icon(
                                      Icons.person,
                                      color: ColorConstant.grey,
                                    ),
                                    hintStyle: TextStyle(
                                        color: ColorConstant.grey,
                                        fontSize: 14),
                                    autofocus: false,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Entrez un mail valide';
                                      }
                                      return null;
                                    },
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Text(
                                'lbl_first_name'.tr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Container(
                                height: 50,
                                child: CustomTextFormField(
                                  width: size.width * 0.9,
                                  controller: controller.firstNameController,
                                  textInputType: TextInputType.text,
                                  hintText: 'Thibaut',
                                  hintStyle: TextStyle(
                                      color: ColorConstant.grey, fontSize: 14),
                                  autofocus: false,
                                  prefix: Icon(
                                    Icons.person,
                                    color: ColorConstant.grey,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Entrez un prénom valide';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Text(
                                'lbl_email'.tr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Container(
                                height: 50,
                                child: CustomTextFormField(
                                  width: size.width * 0.9,
                                  controller: controller.emailController,
                                  textInputType: TextInputType.emailAddress,
                                  hintText: 'thibautdegbetchi@gmail.com',
                                  hintStyle: TextStyle(
                                      color: ColorConstant.grey, fontSize: 14),
                                  autofocus: false,
                                  prefix: Icon(
                                    Icons.email,
                                    color: ColorConstant.grey,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Entrez un mail valide';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Text(
                                'lbl_phone_number'.tr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Container(
                                height: 50,
                                child: CustomTextFormField(
                                  width: size.width * 0.9,
                                  controller: controller.phoneController,
                                  textInputType: TextInputType.number,
                                  hintText: 'msg_number_hint'.tr,
                                  hintStyle: TextStyle(
                                      color: ColorConstant.grey, fontSize: 14),
                                  autofocus: false,
                                  prefix: Icon(
                                    Icons.phone,
                                    color: ColorConstant.grey,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Entrez un numéro valide';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Text(
                                'lbl_password'.tr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Obx(
                                () => Container(
                                  height: 50,
                                  child: CustomTextFormField(
                                    controller: controller.passwordController,
                                    width: size.width * 0.9,
                                    textInputType: TextInputType.text,
                                    hintText: 'msg_hint'.tr,
                                    hintStyle: TextStyle(
                                        color: ColorConstant.grey,
                                        fontSize: 14),
                                    autofocus: false,
                                    obscureText: !controller.seePassword.value,
                                    suffix: InkWell(
                                      onTap: () {
                                        controller.seePassword.value =
                                            !controller.seePassword.value;
                                      },
                                      child: controller.seePassword.value
                                          ? (controller.setPassIconColor.value
                                              ? Icon(
                                                  Icons.visibility,
                                                  color: ColorConstant.deep,
                                                )
                                              : Icon(
                                                  Icons.visibility,
                                                  color: ColorConstant.grey,
                                                ))
                                          : (controller.setPassIconColor.value
                                              ? Icon(
                                                  Icons.visibility_off,
                                                  color: ColorConstant.deep,
                                                )
                                              : Icon(
                                                  Icons.visibility_off,
                                                  color: ColorConstant.grey,
                                                )),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
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
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Text(
                                'lbl_password_confirm'.tr,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 10),
                              child: Obx(
                                () => Container(
                                  height: 50,
                                  child: CustomTextFormField(
                                    controller: controller.passwordController2,
                                    width: size.width * 0.9,
                                    textInputType: TextInputType.text,
                                    hintText: 'msg_hint'.tr,
                                    hintStyle: TextStyle(
                                        color: ColorConstant.grey,
                                        fontSize: 14),
                                    autofocus: false,
                                    obscureText: !controller.seePassword2.value,
                                    suffix: InkWell(
                                        onTap: () {
                                          controller.seePassword2.value =
                                              !controller.seePassword2.value;
                                        },
                                        child: controller.seePassword2.value
                                            ? (controller
                                                    .setPassIconColor2.value
                                                ? Icon(
                                                    Icons.visibility,
                                                    color: ColorConstant.deep,
                                                  )
                                                : Icon(
                                                    Icons.visibility,
                                                    color: ColorConstant.grey,
                                                  ))
                                            : (controller
                                                    .setPassIconColor2.value
                                                ? Icon(
                                                    Icons.visibility_off,
                                                    color: ColorConstant.deep,
                                                  )
                                                : Icon(
                                                    Icons.visibility_off,
                                                    color: ColorConstant.grey,
                                                  ))),
                                    onChange: (value) {
                                      if (value.length != 0)
                                        controller.setPassIconColor2.value =
                                            true;
                                      else
                                        controller.setPassIconColor2.value =
                                            false;
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
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
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedLoadingButton(
                        width: size.width * 0.9,
                        height: size.height * 0.054,
                        color: ColorConstant.deep,
                        controller: controller.btnController,
                        borderRadius: 14,
                        onPressed: controller.doSomething,
                        child: Text(
                          'lbl_subscribe'.tr,
                          style: TextStyle(color: ColorConstant.whiteA700),
                        ))
                  ],
                ),
              ))),
    );
  }
}
