import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/common/views/cached_network_image_view.dart';
import 'package:beauty_app/app/components/common/views/profile_pic_view.dart';
import 'package:beauty_app/app/components/detail/controllers/detail_home_controller.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

class DetailHomeView extends GetView<DetailHomeController> {
  const DetailHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DetailHomeController>(
      () => DetailHomeController(),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bio',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_700,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Даваа - Баасан',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_700,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                  Text(
                    '10:00 - 21:30',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Бямба - Ням',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_700,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                  Text(
                    'Амарна',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ZeplinColors.system_color_primary_50,
                        ),
                        child: IconButton(
                          icon: const SvgAsset(Assets.homeComment),
                          onPressed: () {},
                        ),
                      ),
                      const Text(
                        'Message',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_500,
                          fontSize: 12,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ZeplinColors.system_color_primary_50,
                        ),
                        child: IconButton(
                          icon: const SvgAsset(Assets.homePhone),
                          onPressed: () {},
                        ),
                      ),
                      const Text(
                        'Call',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_500,
                          fontSize: 12,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ZeplinColors.system_color_primary_50,
                        ),
                        child: IconButton(
                          icon: const SvgAsset(Assets.homeDirection),
                          onPressed: () {},
                        ),
                      ),
                      const Text(
                        'Direction',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_500,
                          fontSize: 12,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ZeplinColors.system_color_primary_50,
                        ),
                        child: IconButton(
                          icon: const SvgAsset(Assets.homeShare),
                          onPressed: () {},
                        ),
                      ),
                      const Text(
                        'Share',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_500,
                          fontSize: 12,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 8,
          color: ZeplinColors.system_color_gray_100,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Эрэлттэй үйлчилгээ',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_900,
                      fontSize: 16,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Бүгд >',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_500,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: ZeplinColors.system_color_gray_200),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    // aspectRatio: 2.3867,
                    width: double.infinity,
                    height: 150,
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                // width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: CachedNetworkImageView(
                                  fit: BoxFit.fill,
                                  imageUrl:
                                      "https://i.pinimg.com/736x/41/57/55/415755c2bbc770ee52e2b4dce35f6392.jpg",
                                  height: 100,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Үс тайралт, үс будалт хамт',
                                  style: TextStyle(
                                    color: ZeplinColors.system_color_gray_700,
                                    fontFamily: 'SFProDisplay',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Тайралт / Будалт',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_gray_500,
                                          fontSize: 10,
                                          fontFamily: 'SFProDisplay',
                                        ),
                                      ),
                                      Text(
                                        '85,000 ~ 120,000₮',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_primary_700,
                                          fontSize: 12,
                                          fontFamily: 'SFProDisplay',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
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
              ListTile(
                leading: ProfilePicView(width: 60),
                title: Text(
                  'Olina Laurentz',
                  style: TextStyle(
                    color: ZeplinColors.system_color_gray_700,
                    fontFamily: 'SFProDisplay',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Row(
                  children: [
                    SvgAsset(Assets.heart),
                    Text(
                      '121',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_400,
                        fontSize: 10,
                        fontFamily: 'SFProDisplay',
                      ),
                    ),
                    SvgAsset(Assets.sms),
                    Text(
                      '502',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_400,
                        fontSize: 10,
                        fontFamily: 'SFProDisplay',
                      ),
                    ),
                  ],
                ),
                trailing: Container(
                  width: Get.width * 0.4,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SvgAsset(Assets.calendar),
                        SizedBox(width: 8),
                        Text(
                          'Цаг захиалах',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_700,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Сэтгэгдэл ',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_900,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '(15)',
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
            ],
          ),
        ),
        Container(
          height: 8,
          color: ZeplinColors.system_color_gray_100,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SvgAsset(Assets.cart),
                SizedBox(width: 10),
                Text(
                  'Захиалга өгөх',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
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
