import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/circular_tab_indicator.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/profile_detail_controller.dart';

class ProfileDetailView extends GetView<ProfileDetailController> {
  const ProfileDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButtonView(),
        title: const Text('Миний мэдээлэл'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: ZeplinColors.system_color_gray_100, height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Ерөнхий мэдээлэл',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_900,
                      fontSize: 16,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ZeplinColors.system_color_gray_300,
                      ),
                    ),
                    height: 50,
                    child: TextField(
                      controller: controller.text[0],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor: ZeplinColors.system_color_primary_400,
                      decoration: Style.textFieldDecoraion.copyWith(
                        hintText: 'Нэр',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: -6, left: 16),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ZeplinColors.system_color_gray_300,
                      ),
                    ),
                    height: 50,
                    child: TextField(
                      controller: controller.text[1],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor: ZeplinColors.system_color_primary_400,
                      decoration: Style.textFieldDecoraion.copyWith(
                        hintText: 'И-мэйл',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: -6, left: 16),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ZeplinColors.system_color_gray_300,
                      ),
                    ),
                    height: 50,
                    child: TextField(
                      controller: controller.text[2],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor: ZeplinColors.system_color_primary_400,
                      decoration: Style.textFieldDecoraion.copyWith(
                        hintText: '12/27/1995',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: -6, left: 16),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          color: ZeplinColors.system_color_gray_50,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: Border(
                            top: BorderSide(
                              color: ZeplinColors.system_color_gray_300,
                            ),
                            left: BorderSide(
                              color: ZeplinColors.system_color_gray_300,
                            ),
                            bottom: BorderSide(
                              color: ZeplinColors.system_color_gray_300,
                            ),
                            right: BorderSide(
                              color: ZeplinColors.system_color_gray_300,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(8),
                        height: 50,
                        child: const Text(
                          '+976',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_500,
                            fontSize: 16,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            border: Border.all(
                              color: ZeplinColors.system_color_gray_300,
                            ),
                          ),
                          height: 50,
                          child: TextField(
                            controller: controller.text[3],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            keyboardType: TextInputType.phone,
                            cursorColor: ZeplinColors.system_color_primary_400,
                            decoration: Style.textFieldDecoraion.copyWith(
                              hintText: 'XXXX-XXXX',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              contentPadding:
                                  const EdgeInsets.only(top: -6, left: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ZeplinColors.system_color_gray_300,
                      ),
                    ),
                    height: 50,
                    child: TextField(
                      controller: controller.text[4],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor: ZeplinColors.system_color_primary_400,
                      decoration: Style.textFieldDecoraion.copyWith(
                        hintText: 'Male',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: -6, left: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(color: ZeplinColors.system_color_gray_100, height: 8),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Нэмэлт мэдээлэл',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Obx(
              () => TabBar(
                // physics: NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: CircleTabIndicator(
                  color: ZeplinColors.system_color_primary_600,
                  radius: 2,
                ),
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgAsset(
                          Assets.scissors,
                          width: 16,
                          color: controller.tabIndex.value == 0
                              ? ZeplinColors.system_color_primary_600
                              : ZeplinColors.system_color_gray_500,
                        ),
                        Text(
                          " Үс".tr,
                          style: TextStyle(
                            color: controller.tabIndex.value == 0
                                ? ZeplinColors.system_color_primary_600
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
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgAsset(
                          Assets.palette,
                          width: 16,
                          color: controller.tabIndex.value == 1
                              ? ZeplinColors.system_color_primary_600
                              : ZeplinColors.system_color_gray_500,
                        ),
                        Text(
                          " Арьс".tr,
                          style: TextStyle(
                            color: controller.tabIndex.value == 1
                                ? ZeplinColors.system_color_primary_600
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
                ],
              ),
            ),
            Obx(
              () => controller.tabIndex.value == 0 ? tab1() : tab2(),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    ZeplinColors.system_color_primary_600,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Хадгалах',
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
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget tab1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Scalp condition',
            style: TextStyle(
              color: ZeplinColors.system_color_gray_700,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ZeplinColors.system_color_gray_300,
              ),
            ),
            height: 50,
            child: TextField(
              controller: controller.text[0],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              cursorColor: ZeplinColors.system_color_primary_400,
              decoration: Style.textFieldDecoraion.copyWith(
                hintText: 'Normal',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: const EdgeInsets.only(top: -6, left: 16),
              ),
            ),
          ),
          const Text(
            'Hair thickness',
            style: TextStyle(
              color: ZeplinColors.system_color_gray_700,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ZeplinColors.system_color_gray_300,
              ),
            ),
            height: 50,
            child: TextField(
              controller: controller.text[0],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              cursorColor: ZeplinColors.system_color_primary_400,
              decoration: Style.textFieldDecoraion.copyWith(
                hintText: 'Normal',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: const EdgeInsets.only(top: -6, left: 16),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget tab2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skin condition',
            style: TextStyle(
              color: ZeplinColors.system_color_gray_700,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ZeplinColors.system_color_gray_300,
              ),
            ),
            height: 50,
            child: TextField(
              controller: controller.text[0],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              cursorColor: ZeplinColors.system_color_primary_400,
              decoration: Style.textFieldDecoraion.copyWith(
                hintText: 'Normal',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: const EdgeInsets.only(top: -6, left: 16),
              ),
            ),
          ),
          const Text(
            'Hair thickness',
            style: TextStyle(
              color: ZeplinColors.system_color_gray_700,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ZeplinColors.system_color_gray_300,
              ),
            ),
            height: 50,
            child: TextField(
              controller: controller.text[0],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              cursorColor: ZeplinColors.system_color_primary_400,
              decoration: Style.textFieldDecoraion.copyWith(
                hintText: 'Normal',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: const EdgeInsets.only(top: -6, left: 16),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
