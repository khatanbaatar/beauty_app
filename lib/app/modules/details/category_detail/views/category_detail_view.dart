import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

import '../controllers/category_detail_controller.dart';

class CategoryDetailView extends GetView<CategoryDetailController> {
  const CategoryDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 4,
          ),
          width: double.infinity,
          child: Row(
            children: [
              BackButtonView(),
              const SizedBox(width: 12),
              const Text(
                'Skin Care',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 20,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const SvgAsset(Assets.bookmarkAlt),
              ),
              IconButton(
                onPressed: () => Get.toNamed(Routes.SAVED),
                icon: const SvgAsset(Assets.shoppingBag),
              ),
            ],
          ),
        ),
        leading: Container(),
        leadingWidth: 0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 8,
                  color: ZeplinColors.system_color_gray_100,
                ),
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
                        buildTab(0, "All", controller.tabIndex),
                        buildTab(1, "Skin/tone", controller.tabIndex),
                        buildTab(2, "Lotion", controller.tabIndex),
                        buildTab(3, "Essence/Serum", controller.tabIndex),
                      ],
                      unselectedLabelColor: ZeplinColors.system_color_gray_500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          PagewiseSliverGrid.count(
            // pageSize: 10,
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 0.85,
            pageLoadController: controller.pagewiseLoadController,
            itemBuilder: (context, item, index) => Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: index % 2 == 0 ? 16 : 8,
                right: index % 2 == 1 ? 16 : 8,
                top: 4,
                bottom: 4,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.PRODUCT_DETAIL);
                    },
                    child: Stack(
                      children: [
                        Image.asset(Assets.sample),
                        Positioned(
                          left: 8,
                          top: 8,
                          child: Container(
                            color: ZeplinColors.system_color_gray_700,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: const Text(
                              'Brand',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Product name',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_900,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            Text(
                              '35,000₮',
                              style: TextStyle(
                                color: ZeplinColors.system_color_primary_600,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const SvgAsset(Assets.bookmarkGrey),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            noItemsFoundBuilder: (context) {
              return Text("no.data".tr);
            },
            loadingBuilder: (context) => LoadingView(),
            showRetry: false,
          ),
        ],
      ),
    );
  }

  Widget buildTab(int index, String name, RxInt ctIndex) {
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
