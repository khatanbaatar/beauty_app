import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonView(),
        title: const Text(
          'Тохиргоо',
          style: TextStyle(
            color: ZeplinColors.system_color_gray_900,
            fontSize: 20,
            fontFamily: 'SFProDisplay',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 8,
              color: ZeplinColors.system_color_gray_100,
            ),
            ListTile(
              leading: const SvgAsset(Assets.bell),
              title: const Text(
                'General notification',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_700,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
              trailing: CupertinoSwitch(
                activeColor: ZeplinColors.system_color_primary_600,
                value: true,
                onChanged: (_) {},
              ),
            ),
            ListTile(
              leading: const SvgAsset(Assets.vibrate),
              title: const Text(
                'Vibrate',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_700,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
              trailing: CupertinoSwitch(
                activeColor: ZeplinColors.system_color_primary_600,
                value: false,
                onChanged: (_) {},
              ),
            ),
            ListTile(
              leading: const SvgAsset(Assets.checked),
              title: const Text(
                'New service Available',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_700,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
              trailing: CupertinoSwitch(
                activeColor: ZeplinColors.system_color_primary_600,
                value: true,
                onChanged: (_) {},
              ),
            ),
            ListTile(
              leading: const SvgAsset(Assets.update),
              title: const Text(
                'App updates',
                style: TextStyle(
                  color: ZeplinColors.system_color_gray_700,
                  fontSize: 16,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
              trailing: CupertinoSwitch(
                activeColor: ZeplinColors.system_color_primary_600,
                value: true,
                onChanged: (_) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
