import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/profile_pic_view.dart';
import 'package:beauty_app/app/components/common/views/search_input_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invite_friend_controller.dart';

class InviteFriendView extends GetView<InviteFriendController> {
  const InviteFriendView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: ZeplinColors.system_color_gray_100,
        leading: const BackButtonView(),
        title: const Text('Найз урих'),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          height: 80,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: ListTile(
            title: const Text(
              'Найзаа урих',
              style: TextStyle(
                color: Color(0xff2f3c4e),
                fontSize: 16,
                fontFamily: 'SFProDisplay',
              ),
            ),
            trailing: IconButton(
              icon: Image.asset(Assets.addFriendButton),
              onPressed: () => Get.toNamed(
                Routes.SEARCH_NUMBER,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
