import 'package:beauty_app/app/utils/styles.dart';
import 'package:beauty_app/app/utils/common_utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'review_star_view.dart';
import '../../../data/models/review.dart';

class ReviewCardView extends GetView {
  final Review review;
  final bool hasMargin;

  const ReviewCardView({required this.review, this.hasMargin = false})
      : super();

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
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.eYmzMsozxh1HX0-bbSS5WQHaHa%26pid%3DApi&f=1"),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              "",
              style: Style.size12.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Row(
            // mainAxisAlignment: MainAxisAlignment.sp,
            children: [
              Text(
                CommonUtils.ago(review.regDtm),
                style: TextStyle(fontSize: 12),
              ),
              Expanded(child: Container()),
              ReviewStarView(),
              const SizedBox(width: Metrics.singleBase),
              Text(
                "${review.rating ?? 0}",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Text(
          review.review ?? "",
          style: TextStyle(
            fontSize: 12,
          ),
          maxLines: 8,
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
