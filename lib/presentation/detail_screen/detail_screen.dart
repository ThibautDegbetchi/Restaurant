import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/detail_screen/controller/detail_contrller.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});
  DetailController controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Page de détail"),
    ));
  }
}
