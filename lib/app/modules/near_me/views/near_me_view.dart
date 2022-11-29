import 'package:beauty_app/app/components/common/views/designer_tile_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import '../controllers/near_me_controller.dart';

class NearMeView extends GetView<NearMeController> {
  const NearMeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<NearMeController>(
      () => NearMeController(),
    );
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 4,
            ),
            width: double.infinity,
            child: Row(
              children: [
                const SvgAsset(Assets.mapPin),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Хаяг өөрчлөх',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_500,
                        fontSize: 10,
                        fontFamily: 'SFProDisplay',
                      ),
                    ),
                    Text(
                      ' 1th khoroo, chingeltei...',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_900,
                        fontSize: 12,
                        fontFamily: 'SFProDisplay',
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const SvgAsset(Assets.bell),
                ),
                IconButton(
                  onPressed: () => Get.toNamed(Routes.SAVED),
                  icon: const SvgAsset(Assets.bookmarkAlt),
                ),
              ],
            ),
          ),
          leading: Container(),
          leadingWidth: 0,
          bottom: TabBar(
            isScrollable: false,
            // physics: NeverScrollableScrollPhysics(),
            controller: controller.tabController,
            indicatorSize: TabBarIndicatorSize.tab,

            tabs: [
              Obx(
                () => Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgAsset(
                        Assets.scissors,
                        color: controller.tabIndex == 0
                            ? ZeplinColors.system_color_primary_700
                            : ZeplinColors.system_color_gray_500,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Salon".tr,
                        style: TextStyle(
                          color: controller.tabIndex.value == 0
                              ? ZeplinColors.system_color_primary_700
                              : ZeplinColors.system_color_gray_500,
                          fontSize: 14,
                          fontWeight: controller.tabIndex.value == 0
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgAsset(
                        Assets.palette,
                        color: controller.tabIndex == 1
                            ? ZeplinColors.system_color_primary_700
                            : ZeplinColors.system_color_gray_500,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Designer".tr,
                        style: TextStyle(
                          color: controller.tabIndex.value == 1
                              ? ZeplinColors.system_color_primary_700
                              : ZeplinColors.system_color_gray_500,
                          fontSize: 14,
                          fontWeight: controller.tabIndex.value == 1
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller.tabController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    color: Colors.white,
                    child: Obx(
                      () => TabBar(
                        controller: controller.tab1Controller,
                        labelColor: ZeplinColors.system_color_gray_100,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                        indicatorPadding: EdgeInsets.zero,
                        indicator: const BoxDecoration(),
                        isScrollable: true,
                        tabs: <Widget>[
                          buildTab(0, "All", controller.tab1Index),
                          buildTab(1, "Salon", controller.tab1Index),
                          buildTab(2, "Barber Shop", controller.tab1Index),
                          buildTab(3, "1:1 VIP", controller.tab1Index),
                        ],
                        unselectedLabelColor:
                            ZeplinColors.system_color_gray_500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) => SizedBox(
                        height: 100,
                        child: SalonTileView(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    color: Colors.white,
                    child: Obx(
                      () => TabBar(
                        controller: controller.tab2Controller,
                        labelColor: ZeplinColors.system_color_gray_100,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                        indicatorPadding: EdgeInsets.zero,
                        indicator: const BoxDecoration(),
                        isScrollable: true,
                        tabs: <Widget>[
                          buildTab(0, "All", controller.tab2Index),
                          buildTab(1, "Тайралт", controller.tab2Index),
                          buildTab(2, "Хими", controller.tab2Index),
                          buildTab(3, "Будаг", controller.tab2Index),
                        ],
                        unselectedLabelColor:
                            ZeplinColors.system_color_gray_500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) => SizedBox(
                        height: 100,
                        child: DesignerTileView(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTab(int index, String name, RxInt ctIndex) {
    return Tab(
      child: Container(
        margin: const EdgeInsets.only(
          left: 0,
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
          color: ctIndex.value == index
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
