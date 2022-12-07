import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController with StateMixin {
  int userType = 1;

  @override
  void onReady() {
    super.onReady();
    change(null, status: RxStatus.success());
  }

  void changeUserType(_userType) {
    userType = _userType;
    update();
  }

  void next() {
    Get.toNamed(Routes.VERIFICATION);
  }
}
