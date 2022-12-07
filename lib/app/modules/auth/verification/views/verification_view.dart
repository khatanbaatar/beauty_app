import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: ZeplinColors.system_color_gray_100,
        leading: BackButtonView(),
        title: const Text('Нууц үг сэргээх'),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 64),
                        const Text(
                          'Code has been sent to +976 88*****2',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_900,
                            fontSize: 16,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                        const SizedBox(height: 32),
                        Pinput(
                          controller: controller.code,
                          length: 4,
                        ),
                        const SizedBox(height: 32),
                        Obx(
                          () => controller.seconds.value == 0
                              ? TextButton(
                                  onPressed: controller.resend,
                                  child: const Text(
                                    'Resend code',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_500,
                                      fontFamily: 'SFProDisplay',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              : Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Resend code in ',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_gray_500,
                                          fontFamily: 'SFProDisplay',
                                        ),
                                      ),
                                      TextSpan(
                                        text: controller.seconds.toString(),
                                        style: const TextStyle(
                                          color: ZeplinColors
                                              .system_color_primary_600,
                                          fontFamily: 'SFProDisplay',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: ' s',
                                        style: TextStyle(
                                          color: ZeplinColors
                                              .system_color_gray_500,
                                          fontFamily: 'SFProDisplay',
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: const TextStyle(
                                    color: ZeplinColors.system_color_gray_500,
                                    fontFamily: 'SFProDisplay',
                                    fontWeight: FontWeight.w400,
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
