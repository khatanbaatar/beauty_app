import 'package:beauty_app/app/data/models/Wishlist.dart';
import 'package:beauty_app/app/data/providers/wishlist_provider.dart';
import 'package:beauty_app/app/services/auth_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class WishlistService extends GetxService {
  AuthService authService=AuthService();
  WishlistProvider wishlistProvider = WishlistProvider();
  Future<WishlistService> init() async {
    // if (Platform.isAndroid) SharedPreferences.registerWith();
    // if (Platform.isIOS) SharedPreferences.registerWith();
    // await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> add(int id) async {
    Wishlist item=Wishlist(orgId: id,userId: authService.user?.id);
    return await wishlistProvider.postItem(item);
  }
}
