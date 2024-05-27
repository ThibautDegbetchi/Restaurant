import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/constants/constants.dart';
import 'package:restaurant/data/apiClient/api_client.dart';
import 'package:restaurant/data/functions/functions.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../../routes/app_routes.dart';

class RegisterController extends GetxController {
  RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();
  TextEditingController nameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Map<String, dynamic> map = {};

  RxBool seePassword = false.obs;
  RxBool seePassword2 = false.obs;
  ApiClient apiClient = ApiClient();

  @override
  void onInit() {
    super.onInit();
  }

  doSomething() async{
    if (formKey.currentState!.validate()) {
      if(passwordController.text==passwordController2.text){
        map = {
          'name': nameController.text +' '+ firstNameController.text,
          'email': emailController.text,
          'phoneNumber': phoneController.text,
          'password': passwordController.text,
        };
        final result =await apiClient.postFromApi(registerUrl, map);
        if(result!=null){
          appSnackBar("success", "Inscription", "Inscription réussit");
          Get.toNamed(AppRoutes.loginScreen);
          btnController.success();
        }
      }else{
        appSnackBar("error", "Confirmation", "Mots de passe non identiques");
        btnController.reset();
      }
    }else{
      appSnackBar("error", "Inscriptiion", "Inscription échouée");
      btnController.reset();
    }
  }
}
