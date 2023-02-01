import 'package:beauty_app/app/data/models/Wishlist.dart';
import 'package:get/get.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class WishlistProvider extends BaseProvider {
  WishlistProvider() : super('/mobile/view/Wishlist');

  Future<Wishlist> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Wishlist.fromJson(response.body);
  }

  Future<List<Wishlist>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Wishlist> data = [];
    response.body.forEach((v) {
      data.add(Wishlist.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Wishlist>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Wishlist>.fromJson(response.body);
  }

  Future<ResponseModel<Wishlist>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Wishlist>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Wishlist item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
