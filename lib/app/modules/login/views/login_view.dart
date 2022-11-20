import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ZeplinColors.system_color_gray_50,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.sampleLogo, width: 40, height: 40),
                        const SizedBox(width: 16),
                        const Text(
                          'Beauty App',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_700,
                            fontSize: 30,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 91),
                    const Text(
                      'Нэвтрэх хэсэг',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SFProDisplay',
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
                      height: 60,
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
                          icon: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: const SvgAsset(Assets.mail, width: 24),
                          ),
                          contentPadding: const EdgeInsets.only(left: 0),
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
                      height: 60,
                      child: TextField(
                        controller: controller.password,
                        obscureText: true,
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
                          contentPadding: const EdgeInsets.only(left: 0),
                          suffix: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Мартсан ?',
                              style: TextStyle(
                                color: ZeplinColors.system_color_primary_700,
                                fontSize: 16,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Obx(
                      () => CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        title: const Text(
                          'Хурууны хээгээр нэвтрэх',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_500,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        value: controller.isFingerprint.value,
                        onChanged: controller.toggleFingerprint,
                      ),
                    ),
                    const SizedBox(height: 42),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: controller.login,
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
                                    'Нэвтрэх',
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
                        ),
                        const SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ZeplinColors.system_color_gray_300,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const SvgAsset(Assets.fingerprint),
                          ),
                        ),
                      ],
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
                          'Та бүртгэл үүсгээгүй бол? ',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_500,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.REGISTER),
                          child: const Text(
                            ' Бүртгүүлэх',
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
        ),
      ),
    );
  }
}
