import 'package:get/get.dart';

class PaymentSummaryController extends GetxController with StateMixin {

  @override
  void onReady() {
    super.onReady();
    change(null, status: RxStatus.success());
  }

  void next() {
    Get.back();
    Get.back();
    Get.back();
  }
}
