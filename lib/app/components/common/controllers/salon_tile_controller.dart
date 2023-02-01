import 'package:beauty_app/app/data/models/organization.dart';
import 'package:beauty_app/app/services/wishlist_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SalonTileController extends GetxController {

  add(Organization? org) async {
    // WishlistService wishlistService = WishlistService();
    // var result = await wishlistService.add(org?.id?.toInt() ?? 0);
    // wishlisted = result;
    org?.wishlisted = true;
    update();
  }

}
