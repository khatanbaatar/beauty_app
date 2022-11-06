import 'package:beauty_app/app/constants/colors.dart';
import 'package:beauty_app/app/modules/detail/views/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//   statusBarColor: Colors.white
// ));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Obx(
      () => Scaffold(
        body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          onPageChanged: controller.changePage,
          children: [
            Container(),
            DetailView(),
            Container(),
            Container(),
          ],
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
            onTap: controller.changeTab,
            items: [
              BottomNavigationBarItem(
                label: controller.currentIndex == 0 ? "・" : "",
                tooltip: "home".tr,
                icon: Icon(Icons.home),
                /*icon: SvgPicture.asset(Assets.home,
                    color: controller.currentIndex == 0
                        ? ThemeConfig.colors.secondary
                        : null,
                    width: 21,
                    semanticsLabel: "home".tr),*/
              ),
              BottomNavigationBarItem(
                label: controller.currentIndex == 1 ? "・" : "",
                tooltip: "heart".tr,
                icon: Icon(Icons.home),
                /*icon: SvgPicture.asset(Assets.heartTick,
                    color: controller.currentIndex == 1
                        ? ThemeConfig.colors.secondary
                        : null,
                    width: 21,
                    semanticsLabel: "heart".tr),*/
              ),
              BottomNavigationBarItem(
                label: controller.currentIndex == 2 ? "・" : "",
                tooltip: "route".tr,
                icon: Icon(Icons.home),
                /*icon: SvgPicture.asset(Assets.routeSquare,
                    color: controller.currentIndex == 2
                        ? ThemeConfig.colors.secondary
                        : null,
                    width: 21,
                    semanticsLabel: "route".tr),*/
              ),
              BottomNavigationBarItem(
                label: controller.currentIndex == 3 ? "・" : "",
                tooltip: "user".tr,
                icon: Icon(Icons.home),
                /*icon: SvgPicture.asset(Assets.userSquare,
                    color: controller.currentIndex == 3
                        ? ThemeConfig.colors.secondary
                        : null,
                    width: 21,
                    semanticsLabel: "user".tr),*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}
