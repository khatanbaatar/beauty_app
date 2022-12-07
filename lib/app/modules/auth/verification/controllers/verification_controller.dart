import 'dart:async';

import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController with StateMixin {
  TextEditingController code = TextEditingController();
  late Timer timer;
  RxInt seconds = 60.obs;

  @override
  void onReady() {
    super.onReady();
    change(null, status: RxStatus.success());
    resend();
  }

  void resend() {
    seconds = 60.obs;
    update();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        seconds.value = seconds.value - 1;
        if (seconds.value == 0) {
          timer.cancel();
        }
        update();
      },
    );
  }

  void next() {
    Get.toNamed(Routes.RESET_PASSWORD);
  }
}
