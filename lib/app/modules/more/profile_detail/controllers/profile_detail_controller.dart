import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  List<TextEditingController> text = [];
  late TabController tabController;
  RxInt tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
    for (var i = 0; i < 6; i++) {
      text.add(TextEditingController());
    }
  }
}
