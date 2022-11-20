import 'package:beauty_app/app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'svg_asset_view.dart';

import 'package:get/get.dart';

class BackButtonView extends GetView {
  final String icon;
  const BackButtonView({super.key, this.icon = Assets.backGray});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgAsset(icon),
      onPressed: Get.back,
    );
  }
}
