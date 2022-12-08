import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ReserveEditController extends GetxController with StateMixin {

  PageController pageControllerTime = PageController(viewportFraction: 80 / Get.width);
  PageController pageControllerService = PageController(viewportFraction: 1.0);
  PageController pageControllerStylist = PageController(viewportFraction: 0.2);

  int selectedTime = 0;
  int selectedService = 0;
  int selectedStylist = 0;

  @override
  void onReady() {
    super.onReady();
    change(null, status: RxStatus.success());
  }

  void chooseTime(int _index) {
    selectedTime = _index;
    update();
  }

  void chooseService(int _index) {
    selectedService = _index;
    update();
  }

  void chooseStylist(int _index) {
    selectedStylist = _index;
    update();
  }

  void next() {
    Get.toNamed(Routes.PAYMENT_METHOD);
  }
}
