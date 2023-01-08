import 'package:beauty_app/app/data/models/tag.dart';
import 'package:get/get.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class TagProvider extends BaseProvider {
  TagProvider(prefix) : super('/api/mobile/view/tag');

  Future<Tag> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Tag.fromJson(response.body);
  }

  Future<List<Tag>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Tag> data = [];
    response.body.forEach((v) {
      data.add(Tag.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Tag>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Tag>.fromJson(response.body);
  }

  Future<ResponseModel<Tag>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Tag>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Tag item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
