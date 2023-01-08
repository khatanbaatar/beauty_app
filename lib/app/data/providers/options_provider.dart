import 'package:get/get.dart';
import '../models/options/options.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class OptionsProvider extends BaseProvider {
  OptionsProvider() : super('/mobile/view/options');

  Future<Options> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Options.fromJson(response.body);
  }

  Future<List<Options>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Options> data = [];
    response.body.forEach((v) {
      data.add(Options.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Options>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Options>.fromJson(response.body);
  }

  Future<ResponseModel<Options>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Options>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Options item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
