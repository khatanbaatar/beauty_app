import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:styled_widget/styled_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: // Login
          Stack(alignment: Alignment.center, children: [
        // Top bar
        Stack(children: [
          // Time
          PositionedDirectional(
            top: 22,
            start: 24,
            child: Text("9:41",
                style: const TextStyle(
                    color: ZeplinColors.system_color_gray_700,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.left),
          ),
          // right icons
          PositionedDirectional(
            top: 25,
            start: 342,
            child: Stack(children: [
              // Wifi
              PositionedDirectional(
                top: 0,
                start: 0,
                child: Stack(children: [
                  // Path
                  PositionedDirectional(
                    top: 0,
                    start: 0,
                    child: Container(width: 17, height: 17),
                  ),
                  // Rectangle
                  PositionedDirectional(
                    top: 0,
                    start: 0,
                    child: Container(width: 17, height: 17),
                  ),
                  // Path
                  PositionedDirectional(
                    top: 0,
                    start: 0,
                    child: Container(width: 17, height: 17),
                  ),
                  // Path
                  PositionedDirectional(
                    top: 1.417,
                    start: 0,
                    child: Opacity(
                      opacity: 0.10000000149011612,
                      child: Container(
                          width: 17,
                          height: 14.167,
                          decoration: BoxDecoration(
                              color: ZeplinColors.system_color_gray_700)),
                    ),
                  )
                ]),
              ),
              // Signal
              PositionedDirectional(
                top: 0,
                start: 16,
                child: Stack(children: [
                  // Path
                  PositionedDirectional(
                    top: 0,
                    start: 0,
                    child: Container(width: 17, height: 17),
                  ),
                  // Path
                  PositionedDirectional(
                    top: 1.417,
                    start: 1.417,
                    child: Container(
                        width: 14.167,
                        height: 14.167,
                        decoration: BoxDecoration(
                            color: ZeplinColors.system_color_gray_700)),
                  )
                ]),
              ),
              // Battery
              PositionedDirectional(
                top: 1,
                start: 38,
                child: Stack(children: [
                  // Base
                  PositionedDirectional(
                    top: 0,
                    start: 0,
                    child: Container(
                        width: 8,
                        height: 15,
                        decoration:
                            BoxDecoration(color: const Color(0x4d334155))),
                  ),
                  // Charge
                  PositionedDirectional(
                    top: 8,
                    start: 0,
                    child: Container(
                        width: 8,
                        height: 7,
                        decoration: BoxDecoration(
                            color: ZeplinColors.system_color_gray_700)),
                  )
                ]),
              )
            ]),
          )
        ]),
        // Та бүртгэл үүсгээгүй бол? Бүртгүүлэх
        RichText(
            text: TextSpan(children: [
          TextSpan(
              style: const TextStyle(
                  color: ZeplinColors.system_color_gray_500,
                  fontWeight: FontWeight.w400,
                  fontFamily: "SFProDisplay",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
              text: "Та бүртгэл үүсгээгүй бол? "),
          TextSpan(
              style: const TextStyle(
                  color: ZeplinColors.system_color_primary_700,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SFProDisplay",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
              text: "Бүртгүүлэх")
        ])).positioned(bottom: 50),
        // - Эсвэл -
        Text(" - Эсвэл -",
                style: const TextStyle(
                    color: ZeplinColors.system_color_gray_500,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.center)
            .positioned(top: 596),
        // Group 2
        Stack(children: [
          // Beauty App
          PositionedDirectional(
            top: 5,
            start: 64,
            child: Text("Beauty App",
                style: const TextStyle(
                    color: ZeplinColors.system_color_gray_700,
                    fontWeight: FontWeight.w600,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0),
                textAlign: TextAlign.left),
          ),
          // Group 1
          PositionedDirectional(
            top: 0,
            start: 0,
            child: Stack(children: [
              // Ellipse 8
              PositionedDirectional(
                top: 0,
                start: 0,
                child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(color: ZeplinColors.light_urple)),
              ),
              // heart-alt
              PositionedDirectional(
                top: 22.5,
                start: 22.5,
                child:
                    // Icon
                    Container(
                        width: 22.313,
                        height: 20.188,
                        decoration: BoxDecoration(
                            color: ZeplinColors.system_color_warning_400)),
              )
            ]),
          )
        ]).positioned(height: Get.height, width: Get.width, top: 144),
        // Input field
        Stack(children: [
          // mail-alt-1
          PositionedDirectional(
            top: 14,
            start: 16,
            child:
                // Icon
                Container(
                    width: 15,
                    height: 11.667,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ZeplinColors.system_color_gray_400,
                            width: 1.6699999570846558))),
          ),
          // Text
          PositionedDirectional(
            top: 12,
            start: 44,
            child: Text("И-мэйл",
                style: const TextStyle(
                    color: ZeplinColors.system_color_gray_500,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left),
          )
        ]).positioned(height: Get.height, width: Get.width, top: 320),
        // Input field
        Stack(children: [
          // lock-alt
          PositionedDirectional(
            top: 14,
            start: 16,
            child:
                // Icon
                Container(
                    width: 13.333,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ZeplinColors.system_color_gray_400,
                            width: 1.6699999570846558))),
          ),
          // Text
          PositionedDirectional(
            top: 12,
            start: 44,
            child: Text("Нууц үг",
                style: const TextStyle(
                    color: ZeplinColors.system_color_gray_500,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left),
          ),
          // Text
          PositionedDirectional(
            top: 12,
            start: 200,
            child: Text("Мартсан ?",
                style: const TextStyle(
                    color: ZeplinColors.system_color_primary_700,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.right),
          )
        ]).positioned(height: Get.height, width: Get.width, top: 386),
        // Нэвтрэх хэсэг
        Text("Нэвтрэх хэсэг",
                style: const TextStyle(
                    color: ZeplinColors.black_white_black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left)
            .positioned(top: 280),
        // Checkbox
        Text("Хурууны хээгээр нэвтрэх",
                style: const TextStyle(
                    color: ZeplinColors.system_color_gray_500,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.left)
            .positioned(top: 456),
        // Button
        Text("Нэвтрэх",
                style: const TextStyle(
                    color: ZeplinColors.black_white_white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left)
            .positioned(top: 516),
        // Icon button
        PositionedDirectional(
          top: 516,
          start: 340,
          child:
              // fingerprint
              // Icon
              Container(
                  width: 15.095,
                  height: 15.844,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: ZeplinColors.system_color_gray_500,
                          width: 2))),
        ),
        // Social button
        PositionedDirectional(
          top: 648,
          start: 24,
          child: Stack(children: [
            // Social icons
            PositionedDirectional(
              top: 12,
              start: 94,
              child:
                  // google logo
                  Container(width: 19.6, height: 20),
            ),
            // Label
            PositionedDirectional(
              top: 10,
              start: 122,
              child: Text("Sign in with Google",
                  style: const TextStyle(
                      color: ZeplinColors.system_color_gray_700,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  textAlign: TextAlign.left),
            )
          ]),
        ),
        // Social button
        PositionedDirectional(
          top: 708,
          start: 24,
          child: Stack(children: [
            // Social icons
            PositionedDirectional(
              top: 12,
              start: 94.5,
              child:
                  // logomark
                  Container(
                      width: 20,
                      height: 16.667,
                      decoration:
                          BoxDecoration(color: const Color(0xff1da1f2))),
            ),
            // Label
            PositionedDirectional(
              top: 10,
              start: 122.5,
              child: Text("Sign in with Twitter",
                  style: const TextStyle(
                      color: ZeplinColors.system_color_gray_700,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  textAlign: TextAlign.left),
            )
          ]),
        )
      ]),
    );
  }
}
