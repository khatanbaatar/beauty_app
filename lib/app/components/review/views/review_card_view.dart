import 'dart:math';

import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/styles.dart';
import 'package:beauty_app/app/utils/common_utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'review_star_view.dart';
import '../../../data/models/review.dart';

class ReviewCardView extends GetView {
  final Review review = Review();
  final bool hasMargin;

  ReviewCardView({this.hasMargin = false}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: hasMargin ? Metrics.doubleBase : 0,
        right: Metrics.doubleBase,
        bottom: hasMargin ? Metrics.doubleBase : 0,
        left: hasMargin ? Metrics.doubleBase : 0,
      ),
      padding: const EdgeInsets.all(Metrics.singleBase),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.all(0),
          leading: SizedBox(
            height: 40,
            width: 40,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(review.user?.avatarUrl ??
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fw7.pngwing.com%2Fpngs%2F340%2F946%2Fpng-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png&f=1&nofb=1&ipt=10531b12d7a0bde2ce1bb946d70c7f70d6df194c6a41db9cd9aafe0e5e6044ff&ipo=images"),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Olina Laurentz',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_900,
                      fontSize: 12,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                  const TextSpan(
                    text: '  •  ',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_300,
                      fontSize: 12,
                      fontFamily: 'Inter',
                    ),
                  ),
                  TextSpan(
                    text: CommonUtils.ago(review.regDtm),
                    style: const TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontSize: 12,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              style: const TextStyle(
                color: ZeplinColors.system_color_gray_900,
                fontSize: 12,
                fontFamily: 'SFProDisplay',
              ),
            ),
          ),
          subtitle: Row(
            // mainAxisAlignment: MainAxisAlignment.sp,
            children: [
              ReviewStarView(stop: min(3.5, 1.0)),
              ReviewStarView(stop: min(3.5, 2.0) - 1.0),
              ReviewStarView(stop: min(3.5, 3.0) - 2.0),
              ReviewStarView(stop: min(3.5, 4.0) - 3.0),
              ReviewStarView(stop: min(3.5, 5.0) - 4.0),
            ],
          ),
        ),
        const Text(
          'Сэтгэл ханамж мөш өндөр байна. Баярлалаа.',
          style: TextStyle(
            color: ZeplinColors.system_color_gray_500,
            fontFamily: 'SFProDisplay',
          ),
        ),
        if (review.review != null &&
            (review.review!.length > 170 ||
                '\n'.allMatches(review.review!).length > 9))
          SizedBox(
            height: 20,
            child: InkWell(
              onTap: () {},
              child: Text(
                "read.more".tr,
                textAlign: TextAlign.justify,
                style: Style.hyperlink,
              ),
            ),
          ),
      ]),
    );
  }
}
