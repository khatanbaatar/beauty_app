import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
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
    return CardView([
      Image.asset(Assets.sample),
      ListTile(
        title: const Text(
          'Matrix Salon, 1th khoroo, Chingeltei disrict',
          style: TextStyle(
            color: ZeplinColors.system_color_gray_900,
            fontFamily: 'SFProDisplay',
          ),
        ),
        subtitle: Row(children: const [
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
        trailing: IconButton(
          onPressed: () {},
          icon: const SvgAsset(Assets.bookmarkAlt),
        ),
      ),
    ]);
  }
}
