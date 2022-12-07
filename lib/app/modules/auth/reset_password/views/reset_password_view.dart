import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: ZeplinColors.system_color_gray_100,
        leading: BackButtonView(),
        title: const Text('Шинэ нууц үг'),
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
                          'Шинэ нууц үг оруулах',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'SFProDisplay',
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
                            child: TextField(
                              controller: controller.pass1,
                              obscureText: controller.obscurePassword.value,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              cursorColor:
                                  ZeplinColors.system_color_primary_400,
                              decoration: Style.textFieldDecoraion.copyWith(
                                hintText: 'Нууц үг',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                icon: Container(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: const SvgAsset(Assets.lock, width: 24),
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 0, top: -32),
                                suffix: Container(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: IconButton(
                                    onPressed: controller.toggleObscure,
                                    icon: SvgAsset(Assets.showObscure),
                                  ),
                                ),
                              ),
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
                            child: TextField(
                              controller: controller.pass2,
                              obscureText: controller.obscurePasswordRe.value,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              cursorColor:
                                  ZeplinColors.system_color_primary_400,
                              decoration: Style.textFieldDecoraion.copyWith(
                                hintText: 'Нууц үг давтах',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                icon: Container(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: const SvgAsset(Assets.lock, width: 24),
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 0, top: -32),
                                suffix: Container(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: IconButton(
                                    onPressed: controller.toggleObscureRe,
                                    icon: SvgAsset(Assets.showObscure),
                                  ),
                                ),
                              ),
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
