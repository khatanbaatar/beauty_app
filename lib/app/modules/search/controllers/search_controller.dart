import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:get/get.dart';

class SearchController extends GetxController
    with GetTickerProviderStateMixin {

  late TabController tabController;
  late TabController tab1Controller;
  late TabController tab2Controller;
  RxInt tabIndex = 0.obs;
  RxInt tab1Index = 0.obs;
  RxInt tab2Index = 0.obs;

  final int pageSize = 10;
  late PagewiseLoadController pagewiseLoadController;

  RangeValues priceRangeValues = RangeValues(50000, 500000);
  bool searching = false;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tab1Controller = TabController(length: 4, vsync: this);
    tab2Controller = TabController(length: 6, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
    tab1Controller.addListener(() {
      tab1Index.value = tab1Controller.index;
    });
    tab2Controller.addListener(() {
      tab2Index.value = tab2Controller.index;
    });
    pagewiseLoadController = PagewiseLoadController(
      pageSize: pageSize,
      pageFuture: getData,
    );
  }

  Future<List> getData(page) async {
    page = page ?? 0;
    return [0, 1, 2, 3, 4, 5, 6, 7, 8];
  }

  void updateRangeValue(RangeValues val) {
    priceRangeValues = val;
    update();
  }
}
