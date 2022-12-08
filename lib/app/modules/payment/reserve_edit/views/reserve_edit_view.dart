import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/profile_pic_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/reserve_edit_controller.dart';

class ReserveEditView extends GetView<ReserveEditController> {
  const ReserveEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButtonView(),
        title: const Text('Захиалга'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              GetBuilder<ReserveEditController>(
                  init: ReserveEditController(),
                  initState: (_) {},
                  builder: (_) {
                    return SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                            minWidth: constraints.maxWidth,
                            minHeight: constraints.maxHeight),
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 16),
                              Container(
                                color: Colors.white,
                                height: 135,
                                child: TableCalendar(
                                  firstDay: DateTime.now().subtract(
                                    const Duration(days: 1),
                                  ),
                                  headerStyle: const HeaderStyle(
                                    formatButtonVisible: false,
                                    titleCentered: true,
                                  ),
                                  lastDay: DateTime.utc(2030, 3, 14),
                                  focusedDay: DateTime.now(),
                                  calendarFormat: CalendarFormat.week,
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: const Divider(),
                              ),
                              Container(
                                color: Colors.white,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                height: 60,
                                child: PageView(
                                  controller: controller.pageControllerTime,
                                  pageSnapping: true,
                                  padEnds: false,
                                  children: [
                                    timeLabel(
                                      0,
                                      const TimeOfDay(hour: 10, minute: 0),
                                    ),
                                    timeLabel(
                                      1,
                                      const TimeOfDay(hour: 10, minute: 30),
                                    ),
                                    timeLabel(
                                      2,
                                      const TimeOfDay(hour: 11, minute: 0),
                                    ),
                                    timeLabel(
                                      3,
                                      const TimeOfDay(hour: 11, minute: 30),
                                    ),
                                    timeLabel(
                                      4,
                                      const TimeOfDay(hour: 12, minute: 0),
                                    ),
                                    timeLabel(
                                      5,
                                      const TimeOfDay(hour: 12, minute: 30),
                                    ),
                                    timeLabel(
                                      6,
                                      const TimeOfDay(hour: 13, minute: 0),
                                    ),
                                    timeLabel(
                                      7,
                                      const TimeOfDay(hour: 13, minute: 30),
                                    ),
                                    timeLabel(
                                      8,
                                      const TimeOfDay(hour: 14, minute: 0),
                                    ),
                                    timeLabel(
                                      9,
                                      const TimeOfDay(hour: 14, minute: 30),
                                    ),
                                    timeLabel(
                                      10,
                                      const TimeOfDay(hour: 15, minute: 0),
                                    ),
                                    timeLabel(
                                      11,
                                      const TimeOfDay(hour: 15, minute: 30),
                                    ),
                                    timeLabel(
                                      12,
                                      const TimeOfDay(hour: 16, minute: 0),
                                    ),
                                    timeLabel(
                                      13,
                                      const TimeOfDay(hour: 16, minute: 30),
                                    ),
                                    timeLabel(
                                      14,
                                      const TimeOfDay(hour: 17, minute: 0),
                                    ),
                                    timeLabel(
                                      15,
                                      const TimeOfDay(hour: 17, minute: 30),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 0,
                                ),
                                child: const Text(
                                  'Үйлчилгээ',
                                  style: TextStyle(
                                    color: ZeplinColors.system_color_gray_900,
                                    fontSize: 16,
                                    fontFamily: 'SFProDisplay',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                height: 120,
                                child: PageView(
                                  controller: controller.pageControllerService,
                                  pageSnapping: true,
                                  children: [
                                    serviceItem(0),
                                    serviceItem(1),
                                    serviceItem(2),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 0,
                                ),
                                child: const Text(
                                  'Стилист',
                                  style: TextStyle(
                                    color: ZeplinColors.system_color_gray_900,
                                    fontSize: 16,
                                    fontFamily: 'SFProDisplay',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                height: 120,
                                child: PageView(
                                  controller: controller.pageControllerStylist,
                                  pageSnapping: true,
                                  padEnds: false,
                                  children: [
                                    stylistItem(0),
                                    stylistItem(1),
                                    stylistItem(2),
                                    stylistItem(3),
                                    stylistItem(4),
                                    stylistItem(5),
                                    stylistItem(6),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 50,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 0,
                                ),
                                child: ElevatedButton(
                                  onPressed: () => controller.next(),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      ZeplinColors.system_color_primary_600,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Үргэлжлүүлэх',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              controller.obx(
                (state) => Container(),
                onLoading: LoadingView(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget stylistItem(int index) {
    return GestureDetector(
      onTap: () => controller.chooseStylist(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 56,
                child: ProfilePicView(width: 56),
              ),
              Positioned(
                right: 0,
                top: -10,
                child: SizedBox(
                  width: 20,
                  child: controller.selectedStylist == index
                      ? CircleAvatar(
                          backgroundColor:
                              ZeplinColors.system_color_primary_800,
                          child: SvgAsset(Assets.checkmark),
                        )
                      : Container(),
                ),
              ),
            ],
          ),
          const Text(
            'Olina Laurentz',
            style: TextStyle(
              color: ZeplinColors.system_color_gray_700,
              fontSize: 12,
              fontFamily: 'SFProDisplay',
            ),
          ),
        ],
      ),
    );
  }

  Widget serviceItem(int index) {
    return GestureDetector(
      onTap: () => controller.chooseService(index),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ZeplinColors.system_color_gray_200),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.hwVDS6hfp4Nwdc9HJImycQHaHa%26pid%3DApi&f=1&ipt=57d470ddd662119cd81188d43b7d51fc82bf054dfc9c07af89c5912af69a45e1&ipo=images"),
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
                      'Үс тайралт, үс будалт хамт',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_700,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Тайралт / Будалт',
                            style: TextStyle(
                              color: ZeplinColors.system_color_gray_500,
                              fontSize: 10,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                          Text(
                            '85,000 ~ 120,000₮',
                            style: TextStyle(
                              color: ZeplinColors.system_color_primary_700,
                              fontSize: 12,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
              child: controller.selectedService == index
                  ? CircleAvatar(
                      backgroundColor: ZeplinColors.system_color_primary_800,
                      child: SvgAsset(Assets.checkmark),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeLabel(int index, TimeOfDay time) {
    return GestureDetector(
      onTap: () => controller.chooseTime(index),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 4,
        ),
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: controller.selectedTime == index
              ? ZeplinColors.system_color_primary_600
              : Colors.white,
          border: Border.all(
            color: controller.selectedTime == index
                ? ZeplinColors.system_color_primary_600
                : ZeplinColors.system_color_gray_300,
          ),
        ),
        child: Text(
          time.format(Get.context!),
          style: TextStyle(
            color:
                controller.selectedTime == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
