import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchNumberController extends GetxController {
  final TextEditingController controller = TextEditingController(text: '');
  var text = Rx<String>("");
}
