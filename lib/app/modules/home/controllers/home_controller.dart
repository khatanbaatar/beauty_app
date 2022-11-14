import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

const double viewportFraction = 0.553846153846;

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxInt tabIndex = 0.obs;
  RxInt _currentIndex = 0.obs;
  bool _animating = false;
  late TabController tabController;
  PageController nearbyController = PageController(
    viewportFraction: viewportFraction,
  );

  final count = 0.obs;
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
