import 'package:get/get.dart';

import '../controllers/my_location_controller.dart';

class MyLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyLocationController>(
      () => MyLocationController(),
    );
  }
}
