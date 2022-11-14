import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SalonTileView extends GetView {
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // aspectRatio: 2.3867,
          width: double.infinity,
          height: 130,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.DETAIL);
                    },
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(Assets.salon),
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
                      const Text(
                        'Matrix Salon',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.DETAIL);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '1th khoroo, Chingeltei disrict',
                                style: TextStyle(
                                  color: ZeplinColors.system_color_gray_500,
                                  fontSize: 12,
                                  fontFamily: 'SFProDisplay',
                                ),
                              ),
                              Row(
                                children: const [
                                  ReviewStarView(),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: ' 4.8 (125)  ',
                                          style: TextStyle(
                                            color: ZeplinColors
                                                .system_color_gray_500,
                                            fontSize: 12,
                                            fontFamily: 'SFProDisplay',
                                          ),
                                        ),
                                        TextSpan(
                                          text: '•',
                                          style: TextStyle(
                                            color: ZeplinColors
                                                .system_color_gray_400,
                                            fontSize: 12,
                                            fontFamily: 'SFProDisplay',
                                          ),
                                        ),
                                        TextSpan(
                                          text: '  10:00~21:30',
                                          style: TextStyle(
                                            color: ZeplinColors
                                                .system_color_gray_500,
                                            fontSize: 12,
                                            fontFamily: 'SFProDisplay',
                                          ),
                                        ),
                                      ],
                                    ),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgAsset(Assets.bookmarkAlt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
