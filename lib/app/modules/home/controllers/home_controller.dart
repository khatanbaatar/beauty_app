import 'package:beauty_app/app/data/models/category.dart';
import 'package:beauty_app/app/data/models/organization.dart';
import 'package:beauty_app/app/data/models/response_model.dart';
import 'package:beauty_app/app/data/models/tag.dart';
import 'package:beauty_app/app/data/providers/category_provider.dart';
import 'package:beauty_app/app/data/providers/organization_provider.dart';
import 'package:beauty_app/app/data/providers/tag_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

const double viewportFraction = 0.553846153846;

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxInt tabIndex = 0.obs;
  RxInt _currentIndex = 0.obs;
  bool _animating = false;
  late TabController tabController;
  PageController nearbyController = PageController(
    viewportFraction: viewportFraction,
  );
  List<Organization> organizations = [];
  List<Category> categories = [];
  List<Tag> tags = [];


  OrganizationProvider organizationProvider = OrganizationProvider();
  CategoryProvider categoryProvider = CategoryProvider();
  TagProvider tagProvider = TagProvider();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
      getData();
    });
    getData();
  }

  void getData() async {
    getCategoryData();
    getOrgData();
    getTagData();
  }

  void getCategoryData() async {
    categoryProvider.setFilter();
    ResponseModel<Category> resp = await categoryProvider.postList();
    categories = resp.data ?? [];
    update();
  }

  void getOrgData() async {
    organizationProvider.setFilter(
      filterField: "typeId",
      filterValue: tabController.index,
    );
    ResponseModel<Organization> resp = await organizationProvider.postList();
    organizations = resp.data ?? [];
    update();
  }

  void getTagData() async {
  /*  organizationProvider.setFilter(
      filterField: "typeId",
      filterValue: tabController.index,
    );*/
    ResponseModel<Tag> resp = await tagProvider.postList();
    tags = resp.data ?? [];
    update();
  }

  void increment() => count.value++;
}
