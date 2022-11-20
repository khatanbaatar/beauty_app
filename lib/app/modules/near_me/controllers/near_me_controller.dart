import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

const double viewportFraction = 0.553846153846;

class NearMeController extends GetxController
    with GetTickerProviderStateMixin {

  late TabController tabController;
  late TabController tab1Controller;
  late TabController tab2Controller;
  RxInt tabIndex = 0.obs;
  RxInt tab1Index = 0.obs;
  RxInt tab2Index = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    initialization();
    tabController = TabController(length: 2, vsync: this);
    tab1Controller = TabController(length: 4, vsync: this);
    tab2Controller = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
    tab1Controller.addListener(() {
      tab1Index.value = tab1Controller.index;
    });
    tab2Controller.addListener(() {
      tab2Index.value = tab2Controller.index;
    });
  }

  @override
  void onReady() {
    super.onReady();
    initialization();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  void increment() => count.value++;
}
