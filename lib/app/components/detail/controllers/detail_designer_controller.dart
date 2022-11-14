import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:get/get.dart';

class DetailDesignerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt tabIndex = 0.obs;

  final int pageSize = 10;
  late PagewiseLoadController pagewiseLoadController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
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
}
