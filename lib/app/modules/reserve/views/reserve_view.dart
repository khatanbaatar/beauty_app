import 'package:beauty_app/app/components/common/views/reserve_item_view.dart';
import 'package:get/get.dart';

import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import '../controllers/reserve_controller.dart';

class ReserveView extends GetView<ReserveController> {
  const ReserveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ReserveController>(
      () => ReserveController(),
    );
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: ZeplinColors.system_color_gray_100,
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            width: double.infinity,
            child: Row(
              children: [
                const SvgAsset(Assets.calendarGray),
                const Text(
                  'Reserve',
                  style: TextStyle(
                    color: ZeplinColors.system_color_gray_900,
                    fontSize: 20,
                    fontFamily: 'SFProDisplay',
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const SvgAsset(Assets.bell),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const SvgAsset(Assets.bookmarkAlt),
                ),
              ],
            ),
          ),
          leading: Container(),
          leadingWidth: 0,
        ),
        body: SingleChildScrollView(
          child:  Column(
            children: [
              const SizedBox(height: 8),
              Container(
                color: Colors.white,
                child: Obx(
                  () => TabBar(
                    controller: controller.tabController,
                    labelColor: ZeplinColors.system_color_gray_100,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                    indicatorPadding: EdgeInsets.zero,
                    indicator: const BoxDecoration(),
                    isScrollable: true,
                    tabs: <Widget>[
                      buildTab(0, "All", controller.tabIndex),
                      buildTab(1, "Upcoming", controller.tabIndex),
                      buildTab(2, "Completed", controller.tabIndex),
                      buildTab(3, "Cancelled", controller.tabIndex),
                    ],
                    unselectedLabelColor: ZeplinColors.system_color_gray_500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => SizedBox(
                    height: 100,
                    // child: ReserveItemView(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTab(int index, String name, RxInt ctIndex) {
    return Tab(
      child: Container(
        margin: EdgeInsets.only(
          left: index == 0 ? 16 : 0,
          top: 4,
          bottom: 4,
          right: 0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ctIndex.value == index
              ? ZeplinColors.system_color_gray_500
              : ZeplinColors.system_color_gray_100,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(name),
        ),
      ),
    );
  }
}
