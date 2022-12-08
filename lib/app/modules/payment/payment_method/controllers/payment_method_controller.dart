import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PaymentMethodController extends GetxController with StateMixin {
  RxString method = "qpay".obs;

  @override
  void onReady() {
    super.onReady();
    change(null, status: RxStatus.success());
  }

  void changeValue(_str) {
    method.value = _str;
    update();
  }

  void next() {
    Get.toNamed(Routes.PAYMENT_SUMMARY);
  }
}
