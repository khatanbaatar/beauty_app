import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

class SvgAsset extends GetView {
  final String icon;
  final double? width;
  final double? height;
  final Color? color;
  final bool? hideColor;
  const SvgAsset(this.icon,
      {this.color, this.width, this.height, this.hideColor});

  @override
  Widget build(BuildContext context) {
    return (hideColor ?? false)
        ? SvgPicture.asset(
            icon,
            width: width,
            height: height,
          )
        : SvgPicture.asset(
            icon,
            // color: color ?? ThemeConfig.colors.onPrimary,
            width: width,
            height: height,
          );
  }
}
