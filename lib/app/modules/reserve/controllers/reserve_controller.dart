import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

const double viewportFraction = 0.553846153846;

class ReserveController extends GetxController
    with GetTickerProviderStateMixin {

  late TabController tabController;
  RxInt tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initialization();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
  }

  @override
  void onReady() {
    super.onReady();
    initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }
}
