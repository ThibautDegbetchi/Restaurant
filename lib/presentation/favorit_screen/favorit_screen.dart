import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant/presentation/favorit_screen/controller/favorit_controller.dart';

class FavoritScreen extends StatelessWidget {
  FavoritScreen({super.key});
  FavoritController controller = Get.put(FavoritController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Page de favorit"),
    ));
  }
}
