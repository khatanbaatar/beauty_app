import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:beauty_app/app/utils/styles.dart';

class SeparatorView extends GetView {
  final double? padding;
  const SeparatorView({this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding ?? Metrics.halfBase),
      child: Divider(),
    );
  }
}
