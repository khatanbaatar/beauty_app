import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:get/get.dart';

class SavedController extends GetxController {
  final int pageSize = 10;
  late PagewiseLoadController pagewiseLoadController;

  @override
  void onInit() {
    super.onInit();
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
