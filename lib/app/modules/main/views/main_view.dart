import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/modules/home/views/home_view.dart';
import 'package:beauty_app/app/modules/near_me/views/near_me_view.dart';
import 'package:beauty_app/app/modules/more/profile/views/profile_view.dart';
import 'package:beauty_app/app/modules/payment/reserve/views/reserve_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//   statusBarColor: Colors.white
// ));
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: PageView(
            // physics: NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            onPageChanged: controller.changePage,
            children: const [
              HomeView(),
              NearMeView(),
              ReserveView(),
              ProfileView(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          /*decoration: BoxDecoration(
            color: ThemeConfig.colors.onInverseSurface,
            border: Border(
              top: BorderSide(color: ThemeConfig.colors.onInverseSurface),
            ),
          ),*/
          height: 60,
          child: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ZeplinColors.system_color_primary_700,
            unselectedItemColor: ZeplinColors.system_color_gray_400,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            onTap: controller.changeTab,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                tooltip: "home".tr,
                icon: SvgAsset(
                  Assets.home,
                  color: controller.currentIndex == 0
                      ? ZeplinColors.system_color_primary_700
                      : ZeplinColors.system_color_gray_400,
                  width: 21,
                ),
                backgroundColor: ZeplinColors.system_color_primary_100,
              ),
              BottomNavigationBarItem(
                label: "Near me",
                tooltip: "Near me".tr,
                icon: SvgAsset(
                  Assets.homeCompass,
                  color: controller.currentIndex == 1
                      ? ZeplinColors.system_color_primary_700
                      : ZeplinColors.system_color_gray_400,
                  width: 21,
                ),
                backgroundColor: ZeplinColors.system_color_primary_100,
              ),
              BottomNavigationBarItem(
                label: "Reserve",
                tooltip: "Reserve".tr,
                icon: SvgAsset(
                  Assets.homeCalendar,
                  color: controller.currentIndex == 2
                      ? ZeplinColors.system_color_primary_700
                      : ZeplinColors.system_color_gray_400,
                  width: 21,
                ),
                backgroundColor: ZeplinColors.system_color_primary_100,
              ),
              BottomNavigationBarItem(
                label: "My Profile",
                tooltip: "My Profile".tr,
                icon: SvgAsset(
                  Assets.homeProfile,
                  color: controller.currentIndex == 3
                      ? ZeplinColors.system_color_primary_700
                      : ZeplinColors.system_color_gray_400,
                  width: 21,
                ),
                backgroundColor: ZeplinColors.system_color_primary_100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
