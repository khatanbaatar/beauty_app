import 'package:beauty_app/app/constants/assets.dart';
import 'package:beauty_app/app/constants/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );

    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                floating: false,
                collapsedHeight: 28,
                expandedHeight: 340.0,
                // backgroundColor: ThemeConfig.colors.primary,
                toolbarHeight: 28,
                flexibleSpace: FlexibleSpaceBar(
                  // stretchModes: [StretchMode.zoomBackground],
                  background: AnimatedContainer(
                    duration: const Duration(milliseconds: 750),
                    curve: Curves.fastOutSlowIn,
                    // padding: EdgeInsets.only(bottom: 95 + 13),
                    padding: const EdgeInsets.only(bottom: 38 + 9),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 260,
                          child: Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                alignment: Alignment.bottomLeft,
                                padding: const EdgeInsets.only(bottom: 50),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Assets.hairSalon),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(),
                              );
                            },
                            itemCount: 3,
                          ),
                        ),
                        Text(
                          'Matrix Salon, 1th khoroo, Chingeltei disrict',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_900,
                            fontSize: 16,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '4.8 (125)',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_500,
                            fontSize: 12,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                        Text(
                          '1th khoroo, chingeltei duureg',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_500,
                            fontSize: 12,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: <Widget>[
                  //
                ],
                bottom: PreferredSize(
                  // preferredSize: Size(double.infinity, 120),
                  preferredSize: Size(double.infinity, 38),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => TabBar(
                                isScrollable: true,
                                physics: NeverScrollableScrollPhysics(),
                                controller: controller.tabController,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "home".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 0
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 12,
                                        fontWeight:
                                            controller.tabIndex.value == 0
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Products".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 1
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 12,
                                        fontWeight:
                                            controller.tabIndex.value == 1
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Menu".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 1
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 12,
                                        fontWeight:
                                            controller.tabIndex.value == 1
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Designer".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 1
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 12,
                                        fontWeight:
                                            controller.tabIndex.value == 1
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Style".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 1
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 12,
                                        fontWeight:
                                            controller.tabIndex.value == 1
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: controller.tabController,
            children: [
              Container(
                // color: Get.isDarkMode
                //     ? ThemeConfig.colors.primary
                //     : ThemeConfig.colors.primaryContainer,
                child: Text("Test"),
              ),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
