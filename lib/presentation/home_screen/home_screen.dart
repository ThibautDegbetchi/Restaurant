import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/utils/color_constant.dart';
import 'package:restaurant/presentation/home_screen/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Page d'accueil",
        style: TextStyle(color: ColorConstant.black),
      ),
    ));
  }
}
