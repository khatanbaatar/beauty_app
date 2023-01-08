import 'package:get/get.dart';
import '../models/coupon.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class CouponProvider extends BaseProvider {
  CouponProvider() : super('/mobile/view/coupon');

  Future<Coupon> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Coupon.fromJson(response.body);
  }

  Future<List<Coupon>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Coupon> data = [];
    response.body.forEach((v) {
      data.add(Coupon.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Coupon>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Coupon>.fromJson(response.body);
  }

  Future<ResponseModel<Coupon>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Coupon>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Coupon item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
