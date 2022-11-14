import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'svg_asset_view.dart';

import 'package:get/get.dart';

class SearchInputView extends GetView {
  final bool? enabled;
  final bool? leading;
  final Function(String)? onSubmitted;
  final TextEditingController _controller = TextEditingController(text: '');

  SearchInputView({this.enabled, this.leading, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      // cursorColor: Colors.black,
      enabled: enabled ?? true,
      autofocus: false,
      onSubmitted: (_) {},
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ZeplinColors.system_color_gray_300,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        // disabledBorder: InputBorder.none,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: "Search".tr,
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
        prefixIconConstraints: BoxConstraints(
          maxWidth: 37,
          maxHeight: 20,
        ),
      ),
    );
  }
}
