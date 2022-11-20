import 'package:flutter/material.dart';

class Style {
  static InputDecoration textFieldDecoraion = const InputDecoration(
    contentPadding: EdgeInsets.only(
      top: 10,
      left: 20,
    ),
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    /*labelStyle: const TextStyle(color: Colors.grey),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),*/
  );

  static TextStyle size12 = TextStyle(fontSize: 12);
  static TextStyle bold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get hyperlink => TextStyle(
        color: Color(0xff111928),
        decoration: TextDecoration.underline,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  static List<Shadow> outlinedShadow = [
    Shadow(
      // bottomLeft
      offset: Offset(-0.75, -0.75),
      color: Colors.black,
    ),
    Shadow(
      // bottomRight
      offset: Offset(0.75, -0.75),
      color: Colors.black,
    ),
    Shadow(
      // topRight
      offset: Offset(0.75, 0.75),
      color: Colors.black,
    ),
    Shadow(
      // topLeft
      offset: Offset(-0.75, 0.75),
      color: Colors.black,
    ),
  ];

  static OutlinedBorder roundBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  );
}

class Metrics {
  static const double halfBase = 4;
  static const double singleBase = 8;
  static const double doubleBase = 16;
  static const double tripleBase = 24;
  static const double quadrupleBase = 32;
  static const double quintupleBase = 40;
  static const double sextupleBase = 48;
}
