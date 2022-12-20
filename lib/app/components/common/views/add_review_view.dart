import 'dart:ui';

import 'package:beauty_app/app/components/common/controllers/add_review_controller.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddReviewView extends GetView<AddReviewController> {
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;
  int? type;

  AddReviewView({super.key, this.type});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<AddReviewController>(
      () => AddReviewController(),
    );
    return FractionallySizedBox(
      heightFactor: 1,
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
                    'Үнэлгээ өгөх',
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
                          text: 'You are done using\n',
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
                          text: 'service',
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
                    'Pleace leave your review so other peple can \nknow your opinion',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_600,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ),
              ),
              GetBuilder<AddReviewController>(
                init: AddReviewController(),
                initState: (_) {},
                builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      star(1),
                      const SizedBox(width: 8),
                      star(2),
                      const SizedBox(width: 8),
                      star(3),
                      const SizedBox(width: 8),
                      star(4),
                      const SizedBox(width: 8),
                      star(5),
                    ],
                  );
                },
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                // aspectRatio: 2.3867,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: ZeplinColors.system_color_gray_100),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: TextField(
                  maxLines: 4,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Get.back(),
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
                      onPressed: Get.back,
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
                        'Тийм',
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
        ),
      ),
    );
  }

  Widget star(int num) {
    return GestureDetector(
      onTap: () => controller.rate(num),
      onHorizontalDragStart: (a) => controller.swiperRateStart(a, num),
      onHorizontalDragUpdate: controller.swiperRate,
      child: ReviewStarView(
        size: 50,
        stop: (controller.rating - num + 1).toDouble(),
      ),
    );
  }
}
