import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/services/auth_service.dart';
import 'package:beauty_app/app/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthService authService = Get.find<AuthService>();
  RxBool isFingerprint = false.obs;

  void toggleFingerprint(_value) {
    isFingerprint.value = _value;
    update();
  }

  @override
  void onReady() {
    super.onReady();
    if (kDebugMode) {
      email.text = "gcom";
      password.text = "123";
    }
    change(null, status: RxStatus.success());
  }

  void login() async {
    Map<String, String> fields = {
      "username": email.text,
      "password": password.text,
    };
    change(null, status: RxStatus.loading());
    String result =
        await Get.find<AuthService>().login(email.text, password.text);
    change(null, status: RxStatus.success());
    if (result != "Ok") {
      // ToastUtils.snackbar(text: result);
      ToastUtils.snackbar(text: "Нууц үг эсвэл и-мэйл буруу байна");
      return;
    } else {
      postLogin();
    }
  }

  @override
  void onClose() {}

  void postLogin() {
    try {
      // Get.find<WishlistController>().update();
      // ignore: empty_catches
    } catch (_err) {}
    Get.back();
    Get.toNamed(Routes.MAIN);
    // Get.until((route) => route.isFirst);
  }
}
