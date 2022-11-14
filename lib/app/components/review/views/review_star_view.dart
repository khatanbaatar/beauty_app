import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

class ReviewStarView extends GetView {
  final double rating;
  final double stop;
  final double size;

  const ReviewStarView({this.rating = 0, this.stop = 1.0, this.size = 10})
      : super();

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          colors: const[
            ZeplinColors.rating_color,
            ZeplinColors.system_color_gray_300,
          ],
          stops: [stop, stop],
        ).createShader(bounds);
      },
      blendMode: BlendMode.srcATop,
      child: SvgPicture.asset(
        Assets.star,
        width: size,
        height: size,
        color: ZeplinColors.rating_color,
      ),
    );
  }
}
