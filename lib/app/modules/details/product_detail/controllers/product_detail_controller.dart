import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController 
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
  }

  void chooseMenu(test) {}
}
