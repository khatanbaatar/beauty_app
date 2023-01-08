import 'package:get/get.dart';
import '../models/order/order.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class OrderProvider extends BaseProvider {
  OrderProvider(prefix) : super('/api/mobile/view/order');

  Future<Order> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Order.fromJson(response.body);
  }

  Future<List<Order>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Order> data = [];
    response.body.forEach((v) {
      data.add(Order.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Order>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Order>.fromJson(response.body);
  }

  Future<ResponseModel<Order>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Order>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Order item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
