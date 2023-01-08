import 'package:get/get.dart';
import '../models/location.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class LocationProvider extends BaseProvider {
  LocationProvider() : super('/mobile/view/location');

  Future<Location> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Location.fromJson(response.body);
  }

  Future<List<Location>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Location> data = [];
    response.body.forEach((v) {
      data.add(Location.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Location>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Location>.fromJson(response.body);
  }

  Future<ResponseModel<Location>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Location>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Location item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
