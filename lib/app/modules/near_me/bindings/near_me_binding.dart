import 'package:get/get.dart';

import '../controllers/near_me_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NearMeController>(
      () => NearMeController(),
    );
  }
}
