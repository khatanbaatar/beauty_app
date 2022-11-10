import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:beauty_app/app/utils/styles.dart';

class CardView extends GetView {
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;

  CardView(this.children, {this.mainAxisAlignment, this.hasShadow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Metrics.doubleBase),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: ThemeConfig.colors.dgray200),
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