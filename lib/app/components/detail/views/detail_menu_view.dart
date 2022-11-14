import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/detail/controllers/detail_menu_controller.dart';
import 'package:beauty_app/app/components/detail/views/detail_menu_item_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

class DetailMenuView extends GetView<DetailMenuController> {
  const DetailMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailMenuController>(
      () => DetailMenuController(),
    );
    return CustomScrollView(
      // physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                color: Colors.white,
                child: Obx(
                  () => TabBar(
                    controller: controller.tabController,
                    labelColor: ZeplinColors.system_color_gray_100,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                    indicatorPadding: EdgeInsets.zero,
                    indicator: const BoxDecoration(),
                    isScrollable: true,
                    tabs: <Widget>[
                      buildTab(0, " All"),
                      buildTab(1, " Тайралт"),
                      buildTab(2, " Хими"),
                      buildTab(3, " Будалт"),
                    ],
                    unselectedLabelColor: ZeplinColors.system_color_gray_500,
                  ),
                ),
              ),
            ],
          ),
        ),
        PagewiseSliverList(
          pageLoadController: controller.pagewiseLoadController,
          itemBuilder: (context, item, index) => Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            child: const DetailMenuItemView(),
          ),
          noItemsFoundBuilder: (context) {
            return Text("no.data".tr);
          },
          loadingBuilder: (context) => LoadingView(),
          showRetry: false,
        ),
      ],
    );
  }

  Widget buildTab(int index, String name) {
    return Tab(
      child: Container(
        margin: EdgeInsets.only(
          left: index == 0 ? 10 : 0,
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
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
