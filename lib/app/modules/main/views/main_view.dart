import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/salon_card_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/components/common/views/search_input_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/modules/details/detail/views/detail_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:card_swiper/card_swiper.dart';
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
            children: [
              SingleChildScrollView(
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        SvgAsset(Assets.mapPin),
                        Column(
                          children: [
                            Text(
                              'Хаяг өөрчлөх',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_500,
                                fontSize: 10,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            /*Container(
                            height: 10,
                            child: DropdownButton<String>(
                              focusColor: Colors.white,
                              value: 'Хаяг өөрчлөх',
                              //elevation: 5,
                              style: TextStyle(color: Colors.white),
                              iconEnabledColor: Colors.black,
                              items: <String>[
                                'Хаяг өөрчлөх',
                                'Flutter',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                    ),
                                  ),
                                );
                              }).toList(),
                              hint: Text(
                                "Please choose a langauage",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              onChanged: (value) {},
                            ),
                          ),*/
                            Text(
                              '1th khoroo, chingeltei...',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_900,
                                fontSize: 12,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const SvgAsset(Assets.bell),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const SvgAsset(Assets.bookmarkAlt),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: SearchInputView(leading: true),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const SvgAsset(Assets.filter),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Swiper(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Assets.hairSalon),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                      pagination: const SwiperPagination(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 0),
                        builder: DotSwiperPaginationBuilder(
                          activeColor: ZeplinColors.system_color_primary_400,
                          color: ZeplinColors.system_color_gray_400,
                          activeSize: 6,
                          size: 6,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 60,
                          child: Column(
                            children: const [
                              SvgAsset(Assets.scissors),
                              Text(
                                'Үсчин',
                                style: TextStyle(
                                  color: ZeplinColors.system_color_gray_500,
                                  fontSize: 12,
                                  fontFamily: 'SFProDisplay',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  SizedBox(
                    height: Get.width * viewportFraction + 125,
                    child: PageView(
                      // pageSnapping: false,
                      controller: controller.nearbyController,
                      padEnds: false,
                      children: [
                        SalonCardView(),
                        SalonCardView(),
                        SalonCardView(),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  Obx(
                    () => TabBar(
                      controller: controller.tabController,
                      labelColor: ZeplinColors.system_color_gray_100,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                      indicatorPadding: EdgeInsets.zero,
                      indicator: const BoxDecoration(),
                      isScrollable: true,
                      tabs: <Widget>[
                        buildTab(0, "All"),
                        buildTab(1, "Skin/Tone"),
                        buildTab(2, "Lotion"),
                        buildTab(3, "Essence/Serum"),
                      ],
                      unselectedLabelColor: ZeplinColors.system_color_gray_500,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) => SizedBox(
                        height: 100,
                        child: SalonTileView(),
                      ),
                    ),
                  ),
                ]),
              ),
              DetailView(),
              Container(),
              Container(),
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

  Widget buildTab(int index, String name) {
    return Tab(
      child: Container(
        margin: EdgeInsets.only(
          left: index == 0 ? 16 : 0,
          top: 4,
          bottom: 4,
          right: 0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: controller.tabIndex.value == index
              ? ZeplinColors.system_color_gray_500
              : ZeplinColors.system_color_gray_100,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(name),
        ),
      ),
    );
  }
}
