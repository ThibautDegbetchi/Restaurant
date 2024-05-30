import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant/presentation/location_screen/controller/location_controller.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({super.key});
  LocationController controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Page de Localisation"),
    ));
  }
}
