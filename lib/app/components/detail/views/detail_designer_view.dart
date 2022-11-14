import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/detail/views/detail_designer_item_view.dart';
import 'package:beauty_app/app/components/detail/controllers/detail_designer_controller.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

class DetailDesignerView extends GetView<DetailDesignerController> {
  const DetailDesignerView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailDesignerController>(
      () => DetailDesignerController(),
    );
    return CustomScrollView(
      // physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Дизайнер ',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '(2)',
                        style: TextStyle(
                          color: ZeplinColors.system_color_primary_600,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    color: ZeplinColors.system_color_gray_900,
                    fontSize: 16,
                    fontFamily: 'SFProDisplay',
                    fontWeight: FontWeight.w500,
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
              horizontal: 8,
              vertical: 4,
            ),
            child: const DetailDesignerItemView(),
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
