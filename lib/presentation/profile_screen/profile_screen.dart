import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/presentation/profile_screen/controller/profile_controller.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "msg_profile".tr,
            style: TextStyle(
                fontSize: 18,
                color: ColorConstant.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/images_coffee.png'),
              radius: 50,
            ),
            Text(
              'Thibaut Degbetchi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'thibautdegbetchi@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 11,
                color: ColorConstant.grey,
              ),
            ),
            Container(
                height: size.height * 0.054,
                width: size.width * 0.4,
                margin: getMarginOrPadding(all: 15),
                child: CustomButton(
                  shape: ButtonShape.RoundedBorder15,
                  text: 'lbl_edit_profil'.tr,
                  onTap: () {},
                )),
            SizedBox(
              height: size.height * 0.5,
              width: size.width,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.toNamed(AppRoutes.profileScreen);
                              break;
                            case 1:
                              Get.toNamed(AppRoutes.profileScreen);
                              break;
                            case 2:
                              Get.toNamed(AppRoutes.profileScreen);
                              break;
                            case 3:
                              Get.toNamed(AppRoutes.profileScreen);
                              break;
                            default:
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OptionWidget(
                                controller.icons[index],
                                controller.titles[index],
                                controller.subTitles[index],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: ColorConstant.black,
                              )
                            ],
                          ),
                        ));
                  }),
            )
          ],
        ));
  }
}

Widget OptionWidget(Icon icon1, String title, String subTitle) {
  return SizedBox(
    height: size.height * 0.1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon1,
            SizedBox(
              width: size.width * 0.08,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  subTitle.tr,
                  style: TextStyle(fontSize: 11, color: ColorConstant.grey),
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
