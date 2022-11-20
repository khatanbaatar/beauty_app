import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReserveItemView extends GetView {
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      // aspectRatio: 2.3867,
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: ZeplinColors.system_color_gray_100),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Oct 22, 2022 - 10 AM',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              const Spacer(),
              Container(
                child: const Text(
                  'Cancelled',
                  style: TextStyle(
                    color: ZeplinColors.system_color_error_800,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*SizedBox(
                height: 130,
                child: Padding(
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
              ),*/
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
        ],
      ),
    );
  }
}
