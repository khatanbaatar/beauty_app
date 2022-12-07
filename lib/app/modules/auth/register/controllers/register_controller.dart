import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/services/auth_service.dart';
import 'package:beauty_app/app/utils/common_utils.dart';
import 'package:beauty_app/app/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController with StateMixin {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController id = TextEditingController();
  AuthService authService = Get.find<AuthService>();
  RxBool obscurePassword = true.obs;
  RxBool obscurePasswordRe = true.obs;

  @override
  void onReady() {
    super.onReady();
    name.text = "";
    email.text = "";
    phone.text = "";
    password.text = "";
    repassword.text = "";
    change(null, status: RxStatus.success());
  }

  void register() async {
    Map<String, String> fields = {
      "username": name.text,
      "email": email.text,
      "phone": phone.text,
      "password": password.text,
      "repassword": repassword.text,
      // "roles[0].id": id.text
    };
    if (!CommonUtils.isEmailValid(fields["email"])) {
      ToastUtils.snackbar(text: "И-мэйлээ зөв оруулна уу");
      return;
    }
    if (fields["password"] != fields["repassword"]) {
      ToastUtils.snackbar(text: "Нууц үг таарсангүй");
      return;
    }
    /*if (!CommonUtils.isPasswordValid(fields["password"])) {
      ToastUtils.snackbar(text: "password.type.fail".tr);
      return;
    }*/
    change(null, status: RxStatus.loading());
    String result = await Get.find<AuthService>().register(fields);
    if (result == "Ok") {
      // ToastUtils.snackbar(text: result);
    } else {
      ToastUtils.snackbar(text: result);
    }
    change(null, status: RxStatus.success());
    Get.toNamed(Routes.LOGIN);
  }

  void toggleObscure() {
    obscurePassword.value = !obscurePassword.value;
    update();
  }

  void toggleObscureRe() {
    obscurePasswordRe.value = !obscurePasswordRe.value;
    update();
  }
}
