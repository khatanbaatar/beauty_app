import 'package:flutter/material.dart';

mixin ColorApp {
  static const Color red = Color(0xffED1C24);
  static const Color redDark = Color(0xff941B36);
  static const Color black = Color(0xff202125);
  static const Color yellow = Color(0xffFFC000);
  static const Color white = Color(0xffEDEEF5);
  static const Color grey = Color(0xff969DB3);
  static const Color blue = Color(0xff002060);
  static const Color green = Color(0xff2ACB7F);
  static const Color blueLight = Color(0xff187BFC);
}

// Color get ColorApp.red => const Color();
// Color get purple => const Color();
// Color get ColorApp.black => const Color();
// Color get ColorApp.yellow => const Color();
// Color get ColorApp.white => const Color();
// Color get ColorApp.grey => const Color(0xff969DB3);
// Color get ColorApp.blue => const Color(0xff002060);
// Color get ColorApp.green => const Color(0xff2ACB7F);
// Color get ColorApp.black => const Color(0xff231F20);

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
