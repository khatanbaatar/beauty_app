import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_method_controller.dart';

class PaymentMethodView extends GetView<PaymentMethodController> {
  const PaymentMethodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButtonView(),
        title: const Text('Төлбөрийн төрөл'),
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
                        Container(
                          height: 16,
                          color: ZeplinColors.system_color_gray_100,
                        ),
                        const SizedBox(height: 16),
                        Obx(
                          () => Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ZeplinColors.system_color_gray_300,
                              ),
                            ),
                            height: 60,
                            child: ListTile(
                              leading: const SvgAsset(Assets.qpay),
                              title: const Text(
                                'QPay төлбөрийн үйлчилгээ',
                                style: TextStyle(
                                  color: ZeplinColors.system_color_gray_900,
                                  fontFamily: 'SFProDisplay',
                                ),
                              ),
                              trailing: Radio(
                                groupValue: 'qpay',
                                value: controller.method.value,
                                onChanged: controller.changeValue,
                                activeColor: ZeplinColors.system_color_primary_800,
                              ),
                              onTap: () => controller.changeValue('qpay'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Obx(
                          () => Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: ZeplinColors.system_color_gray_300,
                              ),
                            ),
                            height: 60,
                            child: ListTile(
                              leading: const SvgAsset(Assets.bank),
                              title: const Text(
                                'Дансаар',
                                style: TextStyle(
                                  color: ZeplinColors.system_color_gray_900,
                                  fontFamily: 'SFProDisplay',
                                ),
                              ),
                              trailing: Radio(
                                groupValue: 'bank',
                                value: controller.method.value,
                                onChanged: controller.changeValue,
                                activeColor: ZeplinColors.system_color_primary_800,
                              ),
                              onTap: () => controller.changeValue('bank'),
                            ),
                          ),
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
