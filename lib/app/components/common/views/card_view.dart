import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:beauty_app/app/utils/styles.dart';

class CardView extends GetView {
  List<Widget> children = [];
  double? horizontalMargin;
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;

  CardView(
    this.children, {
    super.key,
    this.mainAxisAlignment,
    this.hasShadow,
    this.horizontalMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 0.0),
      padding: const EdgeInsets.symmetric(
        horizontal: Metrics.doubleBase,
        vertical: 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ZeplinColors.system_color_gray_200),
        // color: ThemeConfig.colors.cardBackground,
        boxShadow: [
          if (hasShadow ?? false)
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(4, 4),
            ),
        ],
      ),
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
