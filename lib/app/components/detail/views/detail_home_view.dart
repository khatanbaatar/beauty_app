import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/detail/controllers/detail_home_controller.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

class DetailHomeView extends GetView<DetailHomeController> {
  DetailHomeView();
  // GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailHomeController>(
      () => DetailHomeController(),
    );
    double screenHeight = Get.height * 0.80;
    /*RenderObject? box = key.currentContext?.findRenderObject();
    if (box != null) {
      Offset? position = (box as RenderBox).localToGlobal(Offset.zero);
      double y = position.dy;
      screenHeight = screenHeight - y;
    }*/
    return Column(
      // key: key,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
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
                buildTab(0, "All"),
                buildTab(1, "Skin/Tone"),
                buildTab(2, "Lotion"),
                buildTab(3, "Essence/Serum"),
              ],
              unselectedLabelColor: ZeplinColors.system_color_gray_500,
            ),
          ),
        ),
        Container(
          height: screenHeight,
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: controller.tabController,
            children: <Widget>[
              list(),
              list(),
              list(),
              list(),
            ],
          ),
        )
      ],
    );
  }

  Widget list() {
    return CustomScrollView(
      // physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [],
          ),
        ),
        PagewiseSliverGrid.count(
          // pageSize: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.7,
          pageLoadController: controller.pagewiseLoadController,
          // pageFuture: controller.getData,
          itemBuilder: product,
          noItemsFoundBuilder: (context) {
            return Text("no.data".tr);
          },
          loadingBuilder: (context) => LoadingView(),
          showRetry: false,
        ),
      ],
    );
  }

  Widget product(context, item, index) {
    return Column(
      children: [
        Image.asset(Assets.sample),
        ListTile(
          title: const Text(
            'Product name',
            style: TextStyle(
              color: ZeplinColors.system_color_gray_900,
              fontFamily: 'SFProDisplay',
            ),
          ),
          subtitle: const Text(
            '35,000₮',
            style: TextStyle(
              color: ZeplinColors.system_color_primary_600,
              fontFamily: 'SFProDisplay',
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const SvgAsset(
              Assets.bookmarkGrey,
              color: ZeplinColors.system_color_gray_500,
            ),
          ),
        )
      ],
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
