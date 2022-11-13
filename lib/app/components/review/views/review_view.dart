import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:beauty_app/app/utils/styles.dart';
import 'review_card_view.dart';
import 'review_header_view.dart';
import '../../../data/models/review.dart';

class ReviewView extends GetView {
  PageController pageController = PageController(
    viewportFraction: 0.67,
  );

  List<Review> reviews = [];
  int? itemId;
  int? ratingCount;
  double avgRating = 0.0;
  ReviewArgs? args;

  ReviewView({
    this.itemId = 0,
    this.ratingCount = 0,
    this.avgRating = 0.0,
    this.args,
    required this.reviews,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            /*SvgAsset(
              Assets.star,
              width: 10,
              height: 10,
              color: ColorConstants.ratingColor,
            ),*/
            RichText(
              text: TextSpan(children: [
                TextSpan(text: "reviews.no.param".tr),
              ]),
            ),
          ],
        ),
        const SizedBox(height: Metrics.singleBase),
        ReviewHeaderView(
          avgRating: avgRating,
          reviewStats: args?.reviewStats,
        ),
        Divider(),
        Divider(),
        const SizedBox(height: Metrics.singleBase),
        if (reviews.isNotEmpty)
          SizedBox(
            height: 240,
            child: PageView(
              controller: pageController,
              padEnds: false,
              children: reviews
                  .asMap()
                  .entries
                  .map(
                    // ignore: unnecessary_cast
                    // (review) => ReviewCardView(review: review.value) as Widget,
                    (review) => ReviewCardView() as Widget,
                  )
                  .toList()
                ..add(Container()),
            ),
          ),
        const SizedBox(height: Metrics.doubleBase),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: OutlinedButton(
            onPressed: reviews.isEmpty
                ? null
                : () {
                    Get.toNamed('/review-all', arguments: args);
                  },
            child: Text(
              "show.reviews".trParams({"count": "$ratingCount"}),
              style: Style.size12,
            ),
          ),
        ),
      ],
    );
  }
}
