import 'dart:ui';

import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/cached_network_image_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/salon_card_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/components/common/views/search_input_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonView(),
        title: SearchInputView(leading: true),
        actions: [
          IconButton(
            onPressed: () => _filter(context),
            icon: const SvgAsset(Assets.filter),
          ),
        ],
      ),
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                if (!controller.searching)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Text(
                      'Хамгийн эрэлттэй хайлт',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_700,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
                        buildTab(0, " All", controller.tabIndex),
                        buildTab(1, " Barber shop", controller.tabIndex),
                        buildTab(2, " VIP", controller.tabIndex),
                        buildTab(3, " 1:1", controller.tabIndex),
                      ],
                      unselectedLabelColor: ZeplinColors.system_color_gray_500,
                    ),
                  ),
                ),
                if (!controller.searching)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Text(
                      'Ангилал',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_700,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                /*GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    category(),
                    category(),
                    category(),
                  ],
                ),*/
              ],
            ),
          ),
          if (controller.searching)
            PagewiseSliverList(
              pageLoadController: controller.pagewiseLoadController,
              itemBuilder: (context, item, index) => Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: SalonTileView(),
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

  void _filter(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(0.6),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.7,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Material(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              // color: Colors.transparent,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      const Text(
                        'Filter',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontSize: 20,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const SvgAsset(Assets.xmark),
                      ),
                    ],
                  ),
                  const Divider(),
                  // const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Category',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_900,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
                          buildTab(0, " All", controller.tab1Index),
                          buildTab(1, " Salon", controller.tab1Index),
                          buildTab(2, " Barber shop", controller.tab1Index),
                          buildTab(3, " 1:1 VIP", controller.tab1Index),
                        ],
                        unselectedLabelColor:
                            ZeplinColors.system_color_gray_500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Rating',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_900,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
                          buildStarTab(0, " All"),
                          buildStarTab(1, " 5"),
                          buildStarTab(2, " 4"),
                          buildStarTab(3, " 3"),
                          buildStarTab(4, " 2"),
                          buildStarTab(5, " 1"),
                        ],
                        unselectedLabelColor:
                            ZeplinColors.system_color_gray_500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Price',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_900,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  GetBuilder<SearchController>(
                    init: SearchController(),
                    initState: (_) {},
                    builder: (_) {
                      return Expanded(
                        child: RangeSlider(
                          values: controller.priceRangeValues,
                          max: 500000,
                          divisions: 100000,
                          onChanged: controller.updateRangeValue,
                          labels: RangeLabels(
                            CommonUtils.formatNumber(
                                controller.priceRangeValues.start.round()),
                            CommonUtils.formatNumber(
                                controller.priceRangeValues.end.round()),
                          ),
                          activeColor: ZeplinColors.system_color_primary_600,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget category() {
    return SizedBox(
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            // CachedNetworkImageView(),
          ],
        ),
      ),
    );
  }

  Widget buildTab(int index, String name, RxInt ctIndex) {
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
          color: ctIndex.value == index
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

  Widget buildStarTab(int index, String name) {
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
          color: controller.tab2Index.value == index
              ? ZeplinColors.system_color_gray_500
              : ZeplinColors.system_color_gray_100,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              SvgAsset(
                Assets.starSharp,
                color: controller.tab2Index.value != index
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
