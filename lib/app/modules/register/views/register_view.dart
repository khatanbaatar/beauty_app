import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_50,
      appBar: AppBar(
        title: const Text('Бүртгүүлэх'),
        centerTitle: true,
        leading: const BackButtonView(),
        backgroundColor: ZeplinColors.system_color_gray_50,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const SvgAsset(Assets.help),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ZeplinColors.system_color_gray_300,
                    ),
                  ),
                  height: 50,
                  child: TextField(
                    controller: controller.name,
                    style: const TextStyle(
                      color: ZeplinColors.system_color_primary_700,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    cursorColor: ZeplinColors.system_color_primary_400,
                    decoration: Style.textFieldDecoraion.copyWith(
                      hintText: 'Нэр',
                      hintStyle: const TextStyle(
                        color: ZeplinColors.system_color_primary_700,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: const EdgeInsets.only(top: -6, left: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ZeplinColors.system_color_gray_300,
                    ),
                  ),
                  height: 50,
                  child: TextField(
                    controller: controller.email,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      color: ZeplinColors.system_color_primary_700,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    cursorColor: ZeplinColors.system_color_primary_400,
                    decoration: Style.textFieldDecoraion.copyWith(
                      hintText: 'И-мэйл',
                      hintStyle: const TextStyle(
                        color: ZeplinColors.system_color_primary_700,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: const EdgeInsets.only(top: -6, left: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        color: ZeplinColors.system_color_gray_50,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border(
                          top: BorderSide(
                            color: ZeplinColors.system_color_gray_300,
                          ),
                          left: BorderSide(
                            color: ZeplinColors.system_color_gray_300,
                          ),
                          bottom: BorderSide(
                            color: ZeplinColors.system_color_gray_300,
                          ),
                          right: BorderSide(
                            color: ZeplinColors.system_color_gray_300,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      height: 50,
                      child: const Text(
                        '+976',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_500,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: ZeplinColors.system_color_gray_300,
                          ),
                        ),
                        height: 50,
                        child: TextField(
                          controller: controller.phone,
                          keyboardType: TextInputType.phone,
                          maxLength: 8,
                          style: const TextStyle(
                            color: ZeplinColors.system_color_primary_700,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          cursorColor: ZeplinColors.system_color_primary_400,
                          decoration: Style.textFieldDecoraion.copyWith(
                            hintText: 'Утас',
                            hintStyle: const TextStyle(
                              color: ZeplinColors.system_color_primary_700,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            counterText: "",
                            contentPadding:
                                const EdgeInsets.only(top: -6, left: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      controller: controller.password,
                      obscureText: controller.obscurePassword.value,
                      style: const TextStyle(
                        color: ZeplinColors.system_color_primary_700,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor: ZeplinColors.system_color_primary_400,
                      decoration: Style.textFieldDecoraion.copyWith(
                        hintText: 'Нууц үг',
                        hintStyle: const TextStyle(
                          color: ZeplinColors.system_color_primary_700,
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
                      controller: controller.repassword,
                      obscureText: controller.obscurePasswordRe.value,
                      style: const TextStyle(
                        color: ZeplinColors.system_color_primary_700,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      cursorColor: ZeplinColors.system_color_primary_400,
                      decoration: Style.textFieldDecoraion.copyWith(
                        hintText: 'Нууц үг давтах',
                        hintStyle: const TextStyle(
                          color: ZeplinColors.system_color_primary_700,
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
                const SizedBox(height: 42),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: controller.register,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        ZeplinColors.system_color_primary_600,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Бүртгүүлэх',
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
                const Center(
                  child: Text(
                    ' - эсвэл -',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                        color: ZeplinColors.system_color_gray_300,
                      )),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SvgAsset(Assets.socialGoogle),
                        SizedBox(width: 10),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_700,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                        color: ZeplinColors.system_color_gray_300,
                      )),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SvgAsset(Assets.socialTwitter),
                        SizedBox(width: 10),
                        Text(
                          'Sign in with Twitter',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_700,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Та аль хэдийн бүртгэлтэй бол?',
                      style: TextStyle(
                        color: ZeplinColors.system_color_gray_500,
                        fontFamily: 'SFProDisplay',
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN),
                      child: const Text(
                        ' Нэвтрэх',
                        style: TextStyle(
                          color: ZeplinColors.system_color_primary_700,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          controller.obx(
            (state) => Container(),
            onLoading: LoadingView(),
          ),
        ],
      ),
    );
  }
}
