import 'package:beauty_app/app/components/common/views/cached_network_image_view.dart';
import 'package:beauty_app/app/components/common/views/profile_pic_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailDesignerItemView extends GetView {
  const DetailDesignerItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
