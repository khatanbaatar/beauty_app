import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/detail/controllers/detail_review_controller.dart';
import 'package:beauty_app/app/components/review/views/review_card_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/components/review/views/review_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

class DetailReviewView extends GetView<DetailReviewController> {
  const DetailReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailReviewController>(
      () => DetailReviewController(),
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
                      buildTab(1, " 5"),
                      buildTab(2, " 4"),
                      buildTab(3, " 3"),
                      buildTab(4, " 2"),
                      buildTab(5, " 1"),
                    ],
                    unselectedLabelColor: ZeplinColors.system_color_gray_500,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  children: const [
                    ReviewStarView(size: 16),
                    Text(
                      ' 4.8 (125 reviews)',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_700,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                      ),
                    ),
                  ],
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
              vertical: 0,
            ),
            child: ReviewCardView(),
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
              SvgAsset(
                Assets.starSharp,
                color: controller.tabIndex.value != index
                    ? ZeplinColors.system_color_gray_500
                    : ZeplinColors.system_color_gray_100,
              ),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
