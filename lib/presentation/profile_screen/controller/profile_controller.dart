import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constant.dart';
import '../../../routes/app_routes.dart';

class ProfileController extends GetxController {
  List<Icon> icons = [
    Icon(
      Icons.history,
      color: ColorConstant.orange,
    ),
    Icon(
      Icons.add_card,
      color: ColorConstant.orange,
    ),
    Icon(
      Icons.location_on,
      color: ColorConstant.orange,
    ),
    Icon(
      Icons.people_alt_sharp,
      color: ColorConstant.orange,
    ),
  ];

  List<String> titles = [
    'lbl_order_history',
    'lbl_payment_methods',
    'msg_delivery_address',
    'lbl_user_pref'
  ];
  List<String> subTitles = [
    'msg_order_info_prof',
    'msg_payment',
    'msg_delivery_location',
    'msg_user_pref'
  ];
}
