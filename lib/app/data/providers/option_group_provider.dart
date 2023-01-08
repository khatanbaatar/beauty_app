import 'package:beauty_app/app/data/models/option_group.dart';
import 'package:get/get.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class OptionGroupProvider extends BaseProvider {
  OptionGroupProvider() : super('/mobile/view/optionGroup');

  Future<OptionGroup> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return OptionGroup.fromJson(response.body);
  }

  Future<List<OptionGroup>> getAll() async {
    Response response = await get('${endpoint}s');
    List<OptionGroup> data = [];
    response.body.forEach((v) {
      data.add(OptionGroup.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<OptionGroup>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<OptionGroup>.fromJson(response.body);
  }

  Future<ResponseModel<OptionGroup>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<OptionGroup>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(OptionGroup item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
