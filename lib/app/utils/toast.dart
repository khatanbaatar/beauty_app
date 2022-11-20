import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ToastUtils {
  static snackbar({context, required String text, int milliseconds = 1500}) {
    ScaffoldMessenger.of(context ?? Get.context).showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(milliseconds: milliseconds),
    ));
  }
}
