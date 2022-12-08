import 'package:get/get.dart';

import '../controllers/reserve_edit_controller.dart';

class ReserveEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReserveEditController>(
      () => ReserveEditController(),
    );
  }
}
