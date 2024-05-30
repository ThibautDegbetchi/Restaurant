import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/utils/color_constant.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar(
      {super.key, required this.selectedIndex, required this.onChange});

  RxInt selectedIndex = 0.obs;
  Function(int, BottomBarEnum)? onChange;
  // final ValueChanged<int> onChange;
  List<BottomBarEnum> bottomBarType = [
    BottomBarEnum.home,
    BottomBarEnum.favorit,
    BottomBarEnum.location,
    BottomBarEnum.profil
  ];
  @override
  Widget build(BuildContext context) {
    const placeholder = Opacity(
      opacity: 0,
      child: IconButton(
        icon: Icon(Icons.no_cell),
        onPressed: null,
      ),
    );

    return Obx(() => BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildWidget(
                  0,
                  Icon(
                    Icons.home_outlined,
                    size: 25,
                  )),
              buildWidget(
                  1,
                  Icon(
                    Icons.favorite_border,
                    size: 25,
                  )),
              placeholder,
              buildWidget(
                2,
                Icon(Icons.location_on_outlined, size: 25),
              ),
              buildWidget(3, Icon(Icons.person_outline_outlined, size: 25)),
            ],
          ),
        ));
  }

  Widget buildWidget(@required int index, @required Icon icon) {
    RxBool isSelected = (index == selectedIndex.value).obs;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: isSelected.value
              ? ColorConstant.deep
              : ColorConstant.whiteA700.withOpacity(0)),
      child: IconTheme(
          data: IconThemeData(
              color: isSelected.value
                  ? ColorConstant.whiteA700
                  : ColorConstant.black),
          child: IconButton(
              onPressed: () {
                selectedIndex.value = index;
                onChange!(index, bottomBarType[index]);
              },
              icon: icon)),
    );
  }
}

enum BottomBarEnum { home, favorit, location, profil }

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
