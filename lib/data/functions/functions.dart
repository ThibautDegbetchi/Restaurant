import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:restaurant/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';

getSharedPref(String key) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.get(key).toString();
}

saveSharedPref(String key, dynamic value) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString(key, value.toString());
}

setHeadersWithToken() async => {
      'Content-Type': 'application/json; charset=UTF-8',
      // 'Content-Type': 'multipart/form-data',
      'Accept': 'application/json',
      'Authorization': 'Bearer' + " " + (await getToken()),
    };

getToken() async {
  var token = await getSharedPref(preftoken);
  print(token);
}

appSnackBar(String type, title, message) {
  switch (type) {
    case "success":
      Get.snackbar(title, message,
          snackPosition: SnackPosition.TOP,
          colorText: ColorConstant.whiteA700,
          backgroundColor: ColorConstant.green);
      break;
    case "error":
      Get.snackbar(title, message ?? "",
          snackPosition: SnackPosition.TOP,
          colorText: ColorConstant.whiteA700,
          backgroundColor: ColorConstant.red);
      break;
    case 'warning':
      Get.snackbar(title, message,
          snackPosition: SnackPosition.TOP,
          colorText: ColorConstant.whiteA700,
          backgroundColor: ColorConstant.orange);
  }
}
