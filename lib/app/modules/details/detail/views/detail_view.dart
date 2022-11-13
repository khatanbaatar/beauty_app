import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/common/views/circular_tab_indicator.dart';
import 'package:beauty_app/app/components/detail/views/detail_review_view.dart';
import 'package:beauty_app/app/components/detail/views/detail_home_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
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
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                floating: false,
                collapsedHeight: 28,
                expandedHeight: 388.0,
                automaticallyImplyLeading: false,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 260,
                          child: Stack(children: [
                            Swiper(
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
                            Padding(
                              padding:
                                  EdgeInsets.only(top: Get.statusBarHeight),
                              child: Row(
                                children: [
                                  const BackButtonView(),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgAsset(Assets.bookmark),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const SvgAsset(Assets.trailing),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16, left: 16),
                          child: Text(
                            'Matrix Salon, 1th khoroo, Chingeltei disrict',
                            style: TextStyle(
                              color: ZeplinColors.system_color_gray_900,
                              fontSize: 16,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: const [
                              ReviewStarView(),
                              SizedBox(width: 6),
                              Text(
                                '4.8 (125)',
                                style: TextStyle(
                                  color: ZeplinColors.system_color_gray_500,
                                  fontSize: 12,
                                  fontFamily: 'SFProDisplay',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16, left: 16),
                          child: Row(
                            children: const [
                              SvgAsset(Assets.locationPin),
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
                        Container(
                          height: 8,
                          color: ZeplinColors.system_color_gray_100,
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
                                // physics: NeverScrollableScrollPhysics(),
                                controller: controller.tabController,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicator: CircleTabIndicator(
                                    color: Colors.purple[200], radius: 2),
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "Home".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 0
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 14,
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
                                        fontSize: 14,
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
                                        color: controller.tabIndex.value == 2
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 14,
                                        fontWeight:
                                            controller.tabIndex.value == 2
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Designer".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 3
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 14,
                                        fontWeight:
                                            controller.tabIndex.value == 3
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Style".tr,
                                      style: TextStyle(
                                        color: controller.tabIndex.value == 4
                                            ? ZeplinColors.system_color_gray_900
                                            : ZeplinColors
                                                .system_color_gray_500,
                                        fontSize: 14,
                                        fontWeight:
                                            controller.tabIndex.value == 4
                                                ? FontWeight.w600
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 8,
                              color: ZeplinColors.system_color_gray_100,
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
              DetailHomeView(),
              Container(),
              Container(),
              Container(),
              const DetailReviewView(),
            ],
          ),
        ),
      ),
    );
  }
}
