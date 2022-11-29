import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/loading_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import 'package:get/get.dart';

import '../controllers/saved_controller.dart';

class SavedView extends GetView<SavedController> {
  const SavedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonView(),
        title: const Text(
          'Хадгалсан',
          style: TextStyle(
            color: ZeplinColors.system_color_gray_900,
            fontSize: 20,
            fontFamily: 'SFProDisplay',
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 8,
                  color: ZeplinColors.system_color_gray_100,
                ),
              ],
            ),
          ),
          PagewiseSliverList(
            pageLoadController: controller.pagewiseLoadController,
            itemBuilder: (context, item, index) => Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              height: 100,
              child: SalonTileView(),
            ),
            noItemsFoundBuilder: (context) {
              return Text("no.data".tr);
            },
            loadingBuilder: (context) => LoadingView(),
            showRetry: false,
          ),
        ],
      ),
    );
  }
}
