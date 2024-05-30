import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/favorit_screen/favorit_screen.dart';
import 'package:restaurant/presentation/home_one_screen/controller/home_one_controller.dart';
import 'package:restaurant/presentation/home_screen/home_screen.dart';

import '../../widgets/custom_bottom_bar.dart';
import '../location_screen/location_screen.dart';
import '../profile_screen/profile_screen.dart';

class HomeOneScreen extends StatelessWidget {
  HomeOneScreen({super.key});
  HomeOneController controller = Get.put(HomeOneController());
  RxInt selectedIndex = 0.obs;
  List pages = [
    HomeScreen(),
    FavoritScreen(),
    LocationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // body: Container(),
      body: Obx(() => getCurrentPage(controller.type.value)),
      bottomNavigationBar: CustomBottomBar(
          selectedIndex: selectedIndex,
          onChange: (int index, BottomBarEnum type) {
            controller.type.value = type;
          }),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          print("hello! you clicked on add button");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void onChanged(int index, BottomBarEnum type) {
    // controller.type.value = type;
  }

  Widget getCurrentPage(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home:
        return HomeScreen();
      case BottomBarEnum.profil:
        return ProfileScreen();
      case BottomBarEnum.favorit:
        return FavoritScreen();
      case BottomBarEnum.location:
        return LocationScreen();
      default:
        return DefaultWidget();
    }
  }
}
