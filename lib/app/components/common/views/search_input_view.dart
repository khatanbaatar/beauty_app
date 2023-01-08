import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'svg_asset_view.dart';

import 'package:get/get.dart';

class SearchInputView extends GetView {
  final bool? enabled;
  final bool? leading;
  final Function(String)? onSubmitted;
  final Function()? onClear;
  final TextEditingController _controller = TextEditingController(text: '');

  var text = Rx<String>("");

  SearchInputView({this.enabled, this.leading, this.onSubmitted, this.onClear});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: _controller,
        // cursorColor: Colors.black,
        enabled: enabled ?? true,
        autofocus: false,
        onSubmitted: (keyword) {
          onSubmitted?.call(keyword);
        },
        onChanged: (value) {
          text.value = value;
        },
        textAlign: TextAlign.left,
        cursorColor: ZeplinColors.system_color_primary_600,
        style: const TextStyle(fontWeight: FontWeight.w400),
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
          hintText: "Search".tr,
          hintStyle: const TextStyle(fontWeight: FontWeight.w300),
          prefixIcon: (leading ?? false)
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: SvgAsset(
                    Assets.searchAlt,
                    width: 20,
                    height: 20,
                    // color: Colors.black,
                  ),
                )
              : null,
          prefixIconConstraints: const BoxConstraints(
            maxWidth: 37,
            maxHeight: 20,
          ),
          suffixIcon: text.value == ""
              ? null
              : IconButton(
                  icon: const SvgAsset(Assets.xmark),
                  onPressed: () {
                    _controller.clear();
                    text.value = "";
                    onClear?.call();
                  },
                ),
        ),
      ),
    );
  }
}
