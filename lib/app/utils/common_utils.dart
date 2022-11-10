import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommonUtils {
  static NumberFormat numberFormatter = NumberFormat.decimalPattern();

  static String formatNumber(int? value) {
    return numberFormatter.format(value ?? 0);
  }

  static String formatDouble(double? value) {
    return numberFormatter.format((value ?? 0).round());
  }

  static String getFileSize(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) +
        ' ' +
        suffixes[i];
  }

  static bool isEmailValid(String? email) {
    if (email == null) return false;
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  static bool isPasswordValid(String? password) {
    if (password == null) return false;
    if (password.length < 8) return false;
    if (RegExp(r'[^A-Za-z0-9]').allMatches(password).isEmpty) return false;
    return true;
  }

  static dynamic parseDtm(String formattedString) {
    DateTime? dtm = DateTime.tryParse(formattedString);
    return dtm ?? formattedString;
  }

  static dynamic formatDtm(dynamic dtm, {String? format}) {
    if (dtm is DateTime) {
      final DateFormat formatter = DateFormat(format ?? 'yyyy-MM-dd');
      return formatter.format(dtm);
    }
    return dtm;
  }

  static String ago(dynamic dtm) {
    print("code ${Get.locale?.languageCode}");
    return dtm is DateTime?
        ? timeago.format(
            dtm ?? DateTime.now(),
            locale: Get.locale?.languageCode ?? 'en',
          )
        : dtm ?? "";
  }
}
