import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/constants/constants.dart';
import 'package:restaurant/data/apiClient/api_client.dart';
import 'package:restaurant/data/functions/functions.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../../routes/app_routes.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RoundedLoadingButtonController btnControlller =
      RoundedLoadingButtonController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool seePassword = false.obs;
  late TabController tabController;
  Map<String, dynamic> map = {};
  ApiClient apiClient = ApiClient();
  RxBool setMailIconColor = false.obs;
  RxBool setPassIconColor = false.obs;
  RxBool setPass2IconColor = false.obs;
  RxBool setPhoneIconColor = false.obs;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  doSomething() async {
    if (formKey.currentState!.validate()) {
      if (tabController.index == 0) {
        map = {
          "email": emailController.text,
          "password": passwordController.text
        };
        final result = await apiClient.postFromApi(loginUrl, map);
        if (result != null) {
          appSnackBar("success", "Connexion", "Connexion réussit");
          Get.offNamedUntil(AppRoutes.homeOneScreen, (route) => false);
          btnControlller.success();
        }
        appSnackBar("error", "Connexion", "Connexion échouée");
        btnControlller.reset();
      } else {
        map = {
          "phoneNumber": emailController.text,
          "password": passwordController2.text
        };
        final result = await apiClient.postFromApi(loginUrl, map);
        if (result != null) {
          appSnackBar("success", "Connexion", "Connexion réussit");
          Get.offNamedUntil(AppRoutes.homeOneScreen, (route) => false);
          btnControlller.success();
        }
        appSnackBar("error", "Connexion", "Connexion échouée");
        btnControlller.reset();
      }
      print('tabController: $tabController');
    } else {
      btnControlller.reset();
    }
  }
}
