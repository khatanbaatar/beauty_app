import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 16),
                        const Text(
                          'Та аль мэдээллээр нууц үгээ сэргээх ээ сонгоно уу?',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_500,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                        const SizedBox(height: 32),
                        GetBuilder<ForgotPasswordController>(
                          init: ForgotPasswordController(),
                          initState: (_) {},
                          builder: (_) {
                            return Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: controller.userType == 1
                                    ? Border.all(
                                        color: ZeplinColors
                                            .system_color_primary_600,
                                        width: 2,
                                      )
                                    : Border.all(
                                        color:
                                            ZeplinColors.system_color_gray_200),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.transparent),
                                ),
                                onPressed: () => controller.changeUserType(1),
                                child: ListTile(
                                  title: const Text(
                                    'via SMS',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_400,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  subtitle: const Text(
                                    '+976 88*****2',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  leading: SizedBox(
                                    height: 60,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 48,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: ZeplinColors
                                                .system_color_primary_50,
                                          ),
                                          child: IconButton(
                                            icon: SvgAsset(Assets.message),
                                            onPressed: () =>
                                                controller.changeUserType(1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        GetBuilder<ForgotPasswordController>(
                          init: ForgotPasswordController(),
                          initState: (_) {},
                          builder: (_) {
                            return Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: controller.userType == 2
                                    ? Border.all(
                                        color: ZeplinColors
                                            .system_color_primary_600,
                                        width: 2,
                                      )
                                    : Border.all(
                                        color:
                                            ZeplinColors.system_color_gray_200),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.transparent),
                                ),
                                onPressed: () => controller.changeUserType(2),
                                child: ListTile(
                                  title: const Text(
                                    'via Email',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_400,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  subtitle: const Text(
                                    'sh*****in@gmail.com',
                                    style: TextStyle(
                                      color: ZeplinColors.system_color_gray_900,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                  leading: SizedBox(
                                    height: 60,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 48,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: ZeplinColors
                                                .system_color_primary_50,
                                          ),
                                          child: IconButton(
                                            icon: SvgAsset(Assets.mailOG),
                                            onPressed: () =>
                                                controller.changeUserType(2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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
