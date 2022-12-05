import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_list_controller.dart';

class CategoryListView extends GetView<CategoryListController> {
  const CategoryListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonView(),
        title: const Text('Төрөл сонгох'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            item("Skin care"),
            item("Cleansing/Peeling"),
            item("Mask/Pack"),
            item("Sun care"),
            item("Base makeup"),
            item("Eye makeup"),
            item("Lips makeup"),
            item("Body"),
            item("Hair"),
            item("Nail"),
            item("Perfume"),
          ],
        ),
      ),
    );
  }

  Widget item(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ZeplinColors.system_color_gray_200),
        ),
        child: ListTile(
          onTap: () {
            Get.toNamed(Routes.CATEGORY_DETAIL);
          },
          leading: const SvgAsset(Assets.scissors),
          title: Text(
            title,
            style: const TextStyle(
              color: ZeplinColors.system_color_gray_900,
              fontFamily: 'SFProDisplay',
            ),
          ),
          trailing: const SvgAsset(Assets.goto),
        ),
      ),
    );
  }
}
