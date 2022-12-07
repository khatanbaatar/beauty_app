import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class InviteFriendController extends GetxController {
  final TextEditingController controller = TextEditingController(text: '');
  var text = Rx<String>("");
}
