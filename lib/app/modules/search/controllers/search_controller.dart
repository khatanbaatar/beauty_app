import 'package:beauty_app/app/data/models/organization.dart';
import 'package:beauty_app/app/data/models/response_model.dart';
import 'package:beauty_app/app/data/providers/organization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:get/get.dart';

class SearchController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  late TabController tab1Controller;
  late TabController tab2Controller;
  RxInt tabIndex = 0.obs;
  RxInt tab1Index = 0.obs;
  RxInt tab2Index = 0.obs;

  final int pageSize = 10;
  late PagewiseLoadController pagewiseLoadController;
  OrganizationProvider organizationProvider = OrganizationProvider();

  RangeValues priceRangeValues = RangeValues(50000, 500000);
  bool searching = false;
  String keyword = "";

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tab1Controller = TabController(length: 4, vsync: this);
    tab2Controller = TabController(length: 6, vsync: this);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
    tab1Controller.addListener(() {
      tab1Index.value = tab1Controller.index;
    });
    tab2Controller.addListener(() {
      tab2Index.value = tab2Controller.index;
    });
    pagewiseLoadController = PagewiseLoadController(
      pageSize: pageSize,
      pageFuture: getData,
    );
  }

  Future<List> getData(page) async {
    print("Getting pages");
    organizationProvider.setFilter(
      filterField: "name",
      filterOperator: "contains",
      filterValue: keyword,
    );
    ResponseModel<Organization> resp = await organizationProvider.postList();
    return resp.data ?? [];
  }

  void updateRangeValue(RangeValues val) {
    priceRangeValues = val;
    update();
  }

  search(String _keyword) {
    keyword = _keyword;
    print("Search keyword: $keyword");
    searching = true;
    pagewiseLoadController.reset();
    update();
  }

  clear() {
    keyword = "";
    searching = false;
    update();
  }
}
