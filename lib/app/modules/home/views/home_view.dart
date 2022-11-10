import 'package:beauty_app/app/constants/colors.dart';
import 'package:beauty_app/app/modules/detail/views/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 98,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x199e77ed),
                offset: Offset(0, 4),
                blurRadius: 6,
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x199e77ed),
                offset: Offset(0, 10),
                blurRadius: 15,
                spreadRadius: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
