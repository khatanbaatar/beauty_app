import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/profile_pic_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_number_controller.dart';

class SearchNumberView extends GetView<SearchNumberController> {
  const SearchNumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: ZeplinColors.system_color_gray_100,
        leading: const BackButtonView(),
        title: const Text('Урилга илгээх'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (context, index) => Container(
              height: 60,
              margin: EdgeInsets.only(
                top: index == 0 ? 50 : 0,
                bottom: index == 29 ? 80 : 0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: ListTile(
                title: const Text(
                  '89951555',
                  style: TextStyle(
                    color: Color(0xff2f3c4e),
                    fontSize: 21,
                    fontFamily: 'SFProDisplay',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: const Text(
                  'Tmka',
                  style: TextStyle(
                    color: Color(0xffaab0bc),
                    fontSize: 16,
                    fontFamily: 'SFProDisplay',
                  ),
                ),
                leading: const ProfilePicView(
                  width: 48,
                ),
                trailing: Radio(
                  value: index % 2 == 0,
                  groupValue: index % 2 == 0,
                  onChanged: (_) {},
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              color: ZeplinColors.system_color_gray_100,
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
                right: 16,
              ),
              child: TextField(
                controller: controller.controller,
                autofocus: false,
                onSubmitted: (_) {},
                onChanged: (value) {
                  controller.text.value = value;
                },
                textAlign: TextAlign.left,
                cursorColor: ZeplinColors.system_color_primary_600,
                style: const TextStyle(fontWeight: FontWeight.w400),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: ZeplinColors.system_color_gray_600,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ZeplinColors.system_color_primary_600,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ZeplinColors.system_color_gray_300,
                    ),
                  ),
                  // errorBorder: InputBorder.none,
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ZeplinColors.system_color_gray_300,
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: "Дугаар хайх".tr,
                  hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: SvgAsset(
                      Assets.searchAlt,
                      width: 20,
                      height: 20,
                      // color: Colors.black,
                    ),
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    maxWidth: 37,
                    maxHeight: 20,
                  ),
                  suffixIcon: controller.text.value == ""
                      ? null
                      : IconButton(
                          icon: const SvgAsset(Assets.xmark),
                          onPressed: () {
                            controller.controller.clear();
                            controller.text.value = "";
                          },
                        ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 66,
              color: ZeplinColors.system_color_gray_100,
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 16,
                right: 16,
              ),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    ZeplinColors.system_color_primary_600,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Урилга илгээх',
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
        ],
      ),
    );
  }
}
