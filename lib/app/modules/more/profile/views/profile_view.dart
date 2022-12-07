import 'package:beauty_app/app/components/common/views/card_view.dart';
import 'package:beauty_app/app/components/common/views/profile_pic_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:beauty_app/app/utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 4,
          ),
          width: double.infinity,
          child: Row(
            children: [
              const SvgAsset(Assets.logo),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const SvgAsset(Assets.bell),
              ),
              IconButton(
                onPressed: () => Get.toNamed(Routes.SAVED),
                icon: const SvgAsset(Assets.bookmarkAlt),
              ),
            ],
          ),
        ),
        leading: Container(),
        leadingWidth: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                ListTile(
                  leading: ProfilePicView(width: 56),
                  title: Text(
                    'John Johnson',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_900,
                      fontSize: 20,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    'john@gmail.com',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                  trailing: IconButton(
                    icon: SvgAsset(Assets.edit),
                    onPressed: () => Get.toNamed(Routes.PROFILE_DETAIL),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CardView([
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const SvgAsset(Assets.profile0),
                      title: const Text(
                        'Миний мэдээлэл',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_700,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () => Get.toNamed(Routes.PROFILE_DETAIL),
                      trailing: const SvgAsset(Assets.goto),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const SvgAsset(Assets.profile1),
                      title: const Text(
                        'Найз урих',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_700,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () => Get.toNamed(Routes.INVITE_FRIEND),
                      trailing: const SvgAsset(Assets.goto),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const SvgAsset(Assets.profile2),
                      title: const Text(
                        'Тохиргоо',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_700,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () => Get.toNamed(Routes.SETTINGS),
                      trailing: const SvgAsset(Assets.goto),
                    ),
                  ]),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CardView([
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const SvgAsset(Assets.profile3),
                      title: const Text(
                        'Нууц үг солих',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_700,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () => Get.toNamed(Routes.CHANGE_PASSWORD),
                      trailing: const SvgAsset(Assets.goto),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const SvgAsset(Assets.profile4),
                      title: const Text(
                        'Dark mode',
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
                      contentPadding: EdgeInsets.zero,
                      leading: const SvgAsset(Assets.profile5),
                      title: const Text(
                        'Үйлчилгээний нөхцөл',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_700,
                          fontSize: 16,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () => Get.toNamed(Routes.TERMS),
                      trailing: const SvgAsset(Assets.goto),
                    ),
                  ]),
                ),
                Spacer(),
                Center(
                  child: Text(
                    'Version 1.0',
                    style: TextStyle(
                      color: ZeplinColors.system_color_gray_500,
                      fontFamily: 'SFProDisplay',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
