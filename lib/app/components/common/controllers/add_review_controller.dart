import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddReviewController extends GetxController {
  int rating = 0;

  void rate(int num) {
    rating = num;
    update();
  }

  int dragRating = 0;

  void swiperRateStart(DragStartDetails dragStartDetails, int num) {
    dragRating = num;
    rate(dragRating);
  }

  void swiperRate(DragUpdateDetails dragDetails) {
    RenderBox box = Get.context?.findRenderObject() as RenderBox;
    var _pos = box.globalToLocal(dragDetails.localPosition);
    var i = _pos.dx / 28;
    int newRating = i.round() + dragRating;
    if (newRating > 5) {
      newRating = 5;
    }
    if (newRating < 0) {
      newRating = 0;
    }
    print("$newRating");
    rate(newRating);
  }
}
