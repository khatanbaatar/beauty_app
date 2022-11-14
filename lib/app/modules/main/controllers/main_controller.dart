import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

const double viewportFraction = 0.553846153846;

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxInt _currentIndex = 0.obs;
  bool _animating = false;

  PageController pageController = PageController(
    initialPage: 0,
  );

  int get currentIndex => _currentIndex.value;

  void changeTab(int _) async {
    print(_);
    final int tmp = _currentIndex.value;
    _currentIndex.value = _;
    _animating = true;
    pageController.jumpToPage(_);
    /*await pageController.animateToPage(_,
        duration: Duration(milliseconds: 500 + (_ - tmp).abs() * 50),
        curve: Curves.easeInOutExpo);*/
    _animating = false;
  }

  void changePage(int _) {
    if (!_animating) {
      _currentIndex.value = _;
    }
  }
}
