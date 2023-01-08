import 'package:beauty_app/app/data/models/lut_user/lut_user.dart';
import 'package:beauty_app/app/data/models/organization.dart';
import 'package:beauty_app/app/data/models/user.dart';
import 'package:beauty_app/app/data/providers/near_me_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double viewportFraction = 0.553846153846;

class NearMeController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  late TabController tab1Controller;
  late TabController tab2Controller;
  RxInt tabIndex = 0.obs;
  RxInt tab1Index = 0.obs;
  RxInt tab2Index = 0.obs;
  NearmeProvider nearmeProvider = NearmeProvider();
  List<Organization> salons = [];
  List<LutUser> designers = [];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tab1Controller = TabController(length: 4, vsync: this);
    tab2Controller = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
    tab1Controller.addListener(() {
      tab1Index.value = tab1Controller.index;
      getSalonData();
    });
    tab2Controller.addListener(() {
      tab2Index.value = tab2Controller.index;
      getDesignerData();
    });
    getSalonData();
    getDesignerData();
  }

  void getSalonData() async {
    salons = await nearmeProvider.getSalon();
    update();
  }

  void getDesignerData() async {
    designers = await nearmeProvider.getDesigner();
    update();
  }
}
