import 'dart:ui';

import 'package:beauty_app/app/components/common/views/add_review_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReserveItemView extends GetView {
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;
  int? type;

  ReserveItemView({super.key, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      // aspectRatio: 2.3867,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: ZeplinColors.system_color_gray_100),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Oct 22, 2022 - 10 AM',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              const Spacer(),
              if (type == 0)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: ZeplinColors.system_color_error_100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Cancelled',
                    style: TextStyle(
                      color: ZeplinColors.system_color_error_800,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              if (type == 1)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: ZeplinColors.system_color_success_100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Completed',
                    style: TextStyle(
                      color: ZeplinColors.system_color_success_800,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              if (type == 2)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: ZeplinColors.system_color_primary_100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Upcoming',
                    style: TextStyle(
                      color: ZeplinColors.system_color_primary_800,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.DETAIL);
                      },
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          Assets.salon,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Matrix Salon',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                      const SizedBox(height: 4),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.DETAIL);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '1th khoroo, Chingeltei disrict',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_500,
                                fontSize: 12,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            Row(
                              children: const [
                                ReviewStarView(),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: ' 4.8 (125)  ',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_gray_500,
                                          fontSize: 12,
                                          fontFamily: 'SFProDisplay',
                                        ),
                                      ),
                                      TextSpan(
                                        text: '•',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_gray_400,
                                          fontSize: 12,
                                          fontFamily: 'SFProDisplay',
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  10:00~21:30',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_gray_500,
                                          fontSize: 12,
                                          fontFamily: 'SFProDisplay',
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: TextStyle(
                                    color: ZeplinColors.system_color_gray_500,
                                    fontSize: 12,
                                    fontFamily: 'SFProDisplay',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgAsset(Assets.bookmarkAlt),
              ),
            ],
          ),
          const SizedBox(height: 4),
          if (type == 1)
            OutlinedButton(
              onPressed: () => _review(context),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: ZeplinColors.system_color_gray_100,
                    ),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SvgAsset(Assets.starGray),
                  Text(
                    'Үнэлгээ өгөх',
                    style: TextStyle(
                      color: Color(0xff364050),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          if (type == 2)
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => _cancel(context),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: ZeplinColors.system_color_gray_100,
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Цуцлах',
                      style: TextStyle(
                        color: Color(0xff364050),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        ZeplinColors.system_color_primary_600,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                            color: ZeplinColors.system_color_gray_100,
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Цаг өөрчлөх',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  void _cancel(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(0.6),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.6,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Material(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              // color: Colors.transparent,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      const Text(
                        'Захиалга цуцлах',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontSize: 20,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const SvgAsset(Assets.xmark),
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 32),
                  const Center(
                    child: SizedBox(
                      width: 360,
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Are you sure want to cancel your\n',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_900,
                                fontSize: 18,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            TextSpan(
                              text: 'Matrix salon ',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_900,
                                fontSize: 18,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'booking?',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_900,
                                fontSize: 18,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontSize: 18,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 64),
                  const Center(
                    child: SizedBox(
                      width: 360,
                      child: Text(
                        'Only 80% of the money you can refund from your payment according to our policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_600,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: Get.back,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                side: const BorderSide(
                                  color: ZeplinColors.system_color_gray_100,
                                ),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Үгүй',
                            style: TextStyle(
                              color: Color(0xff364050),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              ZeplinColors.system_color_primary_600,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                side: const BorderSide(
                                  color: ZeplinColors.system_color_gray_100,
                                ),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Тийм',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _review(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(0.6),
      builder: (context) {
        return AddReviewView();
      },
    );
  }

  Widget star(int num) {
    return GestureDetector(
      onTap: () => controller.rate(num),
      onHorizontalDragStart: (a) => controller.swiperRateStart(a, num),
      onHorizontalDragUpdate: controller.swiperRate,
      child: ReviewStarView(
        size: 20,
        stop: (controller.rating - num + 1).toDouble(),
      ),
    );
  }
}
