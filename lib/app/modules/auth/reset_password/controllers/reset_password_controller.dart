import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController with StateMixin {
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
  RxBool obscurePassword = true.obs;
  RxBool obscurePasswordRe = true.obs;

  @override
  void onReady() {
    super.onReady();
    change(null, status: RxStatus.success());
  }

  void toggleObscure() {
    obscurePassword.value = !obscurePassword.value;
    update();
  }

  void toggleObscureRe() {
    obscurePasswordRe.value = !obscurePasswordRe.value;
    update();
  }

  void next() {
    Get.back();
    Get.back();
    Get.back();
  }
}
