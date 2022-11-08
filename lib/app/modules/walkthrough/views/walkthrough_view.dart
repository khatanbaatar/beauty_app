import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/walkthrough_controller.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:styled_widget/styled_widget.dart';

import '/app/utils/colors.dart';

class WalkthroughView extends GetView<WalkthroughController> {
  final box = GetStorage();
  PageController pageController = PageController();
  int index = 0;

  WalkthroughView({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (c, o) => Scaffold(
        appBar: AppBar(
          backgroundColor: ZeplinColors.system_color_gray_50,
          elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: ZeplinColors.system_color_gray_50,
              statusBarIconBrightness: Brightness.dark),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: ZeplinColors.system_color_gray_50,
              child: PageView(
                controller: pageController,
                onPageChanged: (int i) {
                  index = i;
                },
                children: [
                  item(
                      img: "walk.png",
                      title: "Beauty Shops",
                      text:
                          "Browse through styles and locations to find the right matches for you."),
                  item(
                      img: "walk.png",
                      title: "Beauty Shops",
                      text:
                          "Browse through styles and locations to find the right matches for you.2"),
                  item(
                      img: "walk.png",
                      title: "Beauty Shops",
                      text:
                          "Browse through styles and locations to find the right matches for you.3"),
                ],
              ),
            ),
            SmoothPageIndicator(
                    controller: pageController, // PageController
                    count: 3,
                    effect: const WormEffect(
                        dotColor: Colors.grey,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 4,
                        activeDotColor: ZeplinColors
                            .system_color_gray_700), // your preferred effect
                    onDotClicked: (index) {
                      pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                    }).safeArea().alignment(Alignment.center).positioned(
                  bottom: 150,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Colors.grey.shade300)))),
                      child: const Text(
                        "Нэвтрэх",
                        style: TextStyle(color: Colors.black),
                      )).height(48).marginOnly(right: 8),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            ZeplinColors.system_color_primary_600),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                        color: ZeplinColors
                                            .system_color_primary_600)))),
                    child: const Text("Бүртгүүлэх"),
                  ).height(48).marginOnly(left: 8),
                )
              ],
            ).positioned(
              width: Get.width - 32,
              bottom: 40,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.HELP);
                },
                child: const Text(
                  "Тусламж?",
                  style: TextStyle(color: Colors.black),
                )).positioned(height: Get.height * .1, top: 40, right: 10)
            // if (index != 2)
            //   const Text(
            //     "Алгасах",
            //     style: TextStyle(color: ColorApp.blue),
            //   )
            //       .padding(horizontal: 10, vertical: 4)
            //       .decorated(
            //           color: Colors.grey.withOpacity(.2),
            //           borderRadius: BorderRadius.circular(30))
            //       .gestures(onTap: () {
            //         // box.write("tut1", true);
            //         Get.offAndToNamed("/main");
            //       })
            //       .safeArea()
            //       .positioned(bottom: 17, left: 15),
            // if (index != 2)
            //   Text(
            //     "Дараагийн",
            //     style: TextStyle(
            //         color: ColorApp.redDark, fontWeight: FontWeight.w700),
            //   )
            //       .gestures(onTap: () {
            //         index++;
            //         pageController.animateToPage(index,
            //             duration: Duration(milliseconds: 400),
            //             curve: Curves.ease);
            //       })
            //       .safeArea()
            //       .positioned(bottom: 25, right: 15),
            // if (index == 2)
            //   Text(
            //     "Дуусгах",
            //     style: TextStyle(
            //         color: ColorApp.redDark, fontWeight: FontWeight.w700),
            //   )
            //       .gestures(onTap: () {
            //         box.write("tut1", true);
            //         Get.offAndToNamed(Routes.HOME);
            //       })
            //       .safeArea()
            //       .positioned(bottom: 25, right: 15),
          ],
        ).decorated(color: Colors.white),
      ),
    );
  }

  Widget item({
    String title = "",
    String text = "",
    String img = "",
  }) {
    Widget child = Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        ).width(double.infinity).height(350).marginOnly(top: 24),
        Column(children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade100, width: 1),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x1a000000),
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      spreadRadius: -4),
                  BoxShadow(
                      color: Color(0x1a000000),
                      offset: Offset(0, 10),
                      blurRadius: 30,
                      spreadRadius: -3)
                ],
                color: Colors.white),
            child: Image.asset(
              "assets/arrow_right.png",
            ).padding(all: 10),
          ),
          Text(
            title,
            style: TextStyle(
                color: ColorApp.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ).alignment(Alignment.center).padding(bottom: 20),
          Text(
            text,
            style: TextStyle(
              color: ColorApp.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ]),
      ],
    );

    return OrientationBuilder(
      builder: (c, o) => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "assets/$img",
            width:
                (o == Orientation.landscape) ? Get.width * .3 : Get.width * .6,
          ).padding(bottom: 63),
          child.padding(top: 0, bottom: 0),
        ],
      ).safeArea(),
    );
  }
}
