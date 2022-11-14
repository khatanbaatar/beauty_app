import 'package:get/get.dart';

import 'package:beauty_app/app/components/common/views/salon_card_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/components/common/views/search_input_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Row(
            children: [
              SvgAsset(Assets.mapPin),
              Column(
                children: [
                  Text(
                    'Хаяг өөрчлөх',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontSize: 10,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                  /*Container(
                            height: 10,
                            child: DropdownButton<String>(
                              focusColor: Colors.white,
                              value: 'Хаяг өөрчлөх',
                              //elevation: 5,
                              style: TextStyle(color: Colors.white),
                              iconEnabledColor: Colors.black,
                              items: <String>[
                                'Хаяг өөрчлөх',
                                'Flutter',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                    ),
                                  ),
                                );
                              }).toList(),
                              hint: Text(
                                "Please choose a langauage",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              onChanged: (value) {},
                            ),
                          ),*/
                  Text(
                    ' 1th khoroo, chingeltei...',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_900,
                      fontSize: 12,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ],
              ),
              Spacer(),
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
        Container(
          height: 90,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Row(
            children: [
              Expanded(
                child: SearchInputView(leading: true),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgAsset(Assets.filter),
              ),
            ],
          ),
        ),
        Container(
          height: 160,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Swiper(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.homeGiftcard),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 0),
              builder: DotSwiperPaginationBuilder(
                activeColor: ZeplinColors.system_color_primary_400,
                color: ZeplinColors.system_color_gray_400,
                activeSize: 6,
                size: 6,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildIcon(Assets.scissors, 'Үсчин'),
              buildIcon(Assets.manicure, 'Маникюр'),
              buildIcon(Assets.hair, 'Нүүр будалт'),
              buildIcon(Assets.woman, 'Массаж'),
              buildIcon(Assets.hairStar, 'Хими'),
              buildIcon(Assets.cart, 'Худалдаа'),
              buildIcon(Assets.gift, 'Бэлгийн карт'),
              buildIcon(Assets.more, 'Бусад'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Таны байршилд ойрхон',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Бүгд >',
                  style: TextStyle(
                    color: ZeplinColors.system_color_gray_500,
                    fontFamily: 'SFProDisplay',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.width * viewportFraction + 80,
          child: PageView(
            // pageSnapping: false,
            controller: controller.nearbyController,
            padEnds: false,
            children: [
              SalonCardView(),
              SalonCardView(),
              SalonCardView(),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Хамгийн алдартай',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_900,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Бүгд >',
                  style: TextStyle(
                    color: ZeplinColors.system_color_gray_500,
                    fontFamily: 'SFProDisplay',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => TabBar(
            controller: controller.tabController,
            labelColor: ZeplinColors.system_color_gray_100,
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            indicatorPadding: EdgeInsets.zero,
            indicator: const BoxDecoration(),
            isScrollable: true,
            tabs: <Widget>[
              buildTab(0, "All"),
              buildTab(1, "Salon"),
              buildTab(2, "Barber Shop"),
              buildTab(3, "1:1 VIP"),
            ],
            unselectedLabelColor: ZeplinColors.system_color_gray_500,
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
            itemCount: 6,
            itemBuilder: (context, index) => SizedBox(
              height: 100,
              child: SalonTileView(),
            ),
          ),
        ),
        // const SizedBox(height: 40),
      ]),
    );
  }

  Widget buildIcon(String assets, String label) {
    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: ZeplinColors.system_color_primary_50,
            ),
            child: IconButton(
              icon: SvgAsset(assets),
              onPressed: () {},
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: ZeplinColors.system_color_gray_500,
              fontSize: 12,
              fontFamily: 'SFProDisplay',
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTab(int index, String name) {
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
          color: controller.tabIndex.value == index
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
