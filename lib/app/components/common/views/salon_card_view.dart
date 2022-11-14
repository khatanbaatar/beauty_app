import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SalonCardView extends GetView {
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;

  @override
  Widget build(BuildContext context) {
    return CardView([
      GestureDetector(
        onTap: () {
          Get.toNamed(Routes.DETAIL);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(Assets.sample),
        ),
      ),
      const SizedBox(height: 4),
      Row(children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.DETAIL);
            },
            child: Text(
              'Matrix Salon, 1th khoroo, Chingeltei disrict',
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: ZeplinColors.system_color_gray_900,
                fontFamily: 'SFProDisplay',
                // fontSize: 14,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const SvgAsset(Assets.bookmarkAlt),
        ),
      ]),
      Row(children: const [
        ReviewStarView(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '4.8 (125)  ',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_500,
                  fontSize: 12,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              TextSpan(
                text: '•',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_400,
                  fontSize: 12,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              TextSpan(
                text: '  10:00~21:30',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_500,
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
      ]),
    ]);
  }
}
