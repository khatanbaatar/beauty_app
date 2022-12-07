import 'package:get/get.dart';

import '../controllers/search_number_controller.dart';

class SearchNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchNumberController>(
      () => SearchNumberController(),
    );
  }
}
