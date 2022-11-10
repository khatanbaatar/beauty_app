import 'dart:math';

import 'package:beauty_app/app/utils/styles.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../common/views/card_view.dart';
import 'review_star_view.dart';

class ReviewHeaderView extends GetView {
  final int? ratingCount;
  final double avgRating;
  final Map<num, num>? reviewStats;

  const ReviewHeaderView({
    this.ratingCount = 0,
    this.avgRating = 0.0,
    this.reviewStats,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90 + 2 * Metrics.doubleBase,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: CardView([
              Center(
                child: Text(avgRating.toStringAsFixed(2)),
              ),
              const SizedBox(height: Metrics.singleBase),
              Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReviewStarView(stop: min(avgRating, 1.0)),
                    ReviewStarView(stop: min(avgRating, 2.0) - 1.0),
                    ReviewStarView(stop: min(avgRating, 3.0) - 2.0),
                    ReviewStarView(stop: min(avgRating, 4.0) - 3.0),
                    ReviewStarView(stop: min(avgRating, 5.0) - 4.0),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ZeplinColors.rating_color,
                    gradient: LinearGradient(
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      colors: [
                        ZeplinColors.rating_color,
                        Colors.white,
                      ],
                      stops: [0.2, 0.5],
                    ),
                  ),
                ),
              ]),
            ]),
          ),
          const SizedBox(width: Metrics.doubleBase),
          Expanded(
            flex: 2,
            child: CardView([
              rowRating(stars: 5, number: reviewStats?[5] ?? 0, maxn: maxn()),
              rowRating(stars: 4, number: reviewStats?[4] ?? 0, maxn: maxn()),
              rowRating(stars: 3, number: reviewStats?[3] ?? 0, maxn: maxn()),
              rowRating(stars: 2, number: reviewStats?[2] ?? 0, maxn: maxn()),
              rowRating(stars: 1, number: reviewStats?[1] ?? 0, maxn: maxn()),
            ]),
          ),
        ],
      ),
    );
  }

  num maxn() {
    if (reviewStats == null) {
      return 0;
    }
    return reviewStats!.values.reduce((a, b) => max(a, b));
  }

  Widget rowRating({stars = 5, number = 0, maxn = 1}) {
    return Row(
      children: [
        SizedBox(width: 10 * (5 - stars).toDouble()),
        if (stars > 4) ReviewStarView(),
        if (stars > 3) ReviewStarView(),
        if (stars > 2) ReviewStarView(),
        if (stars > 1) ReviewStarView(),
        ReviewStarView(),
        const SizedBox(width: Metrics.doubleBase),
        Flexible(
          child: SizedBox(
            height: 10,
            child: SliderTheme(
              child: Slider(
                min: 0.0,
                max: (maxn < number ? number : maxn).toDouble(),
                value: number.toDouble(),
                thumbColor: ZeplinColors.rating_color,
                activeColor: ZeplinColors.rating_color,
                inactiveColor: ZeplinColors.rating_color,
                onChanged: null,
              ),
              data: SliderThemeData(
                overlayShape: SliderComponentShape.noOverlay,
                minThumbSeparation: 0,
                overlayColor: Color(0xFFFF5A1F),
                activeTrackColor: Color(0xFFFF5A1F),
                trackHeight: 1,
                thumbShape: SliderComponentShape.noThumb,
              ),
            ),
          ),
        ),
        const SizedBox(width: Metrics.doubleBase),
        Text("$number"),
      ],
    );
  }
}
