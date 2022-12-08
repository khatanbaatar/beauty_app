import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_summary_controller.dart';

class PaymentSummaryView extends GetView<PaymentSummaryController> {
  const PaymentSummaryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        leading: const BackButtonView(),
        title: const Text('Төлбөр баталгаажуулах'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 0,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 16),
                        CardView(
                          [
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Салон',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    'Matrix Salon',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Хаяг байршил',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    '1th khoroo, chingeltei duureg',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Дизайнер',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    'Olina Laurentz',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Утас',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    '+976 XXXX-XXXX',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Захиалгын огноо',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    'Dec 23, 2022',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Үйлчилгээ нэр',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    'Үс тайралт, үс будалт',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        const SizedBox(height: 16),
                        CardView(
                          [
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Үс тайралт',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    '30,0000₮',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Үс будалт',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    '30,0000₮',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Нийт төлөх',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_600,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  Text(
                                    '50,0000₮',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => controller.next(),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                ZeplinColors.system_color_primary_600,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Үргэлжлүүэх',
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
              ),
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
}
