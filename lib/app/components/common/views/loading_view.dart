import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoadingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
          // color: ThemeConfig.colors.onPrimary,
          ),
    );
  }
}
