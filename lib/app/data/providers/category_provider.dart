import 'package:get/get.dart';
import '../models/category.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class CategoryProvider extends BaseProvider {
  CategoryProvider() : super('/mobile/view/category');

  Future<Category> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Category.fromJson(response.body);
  }

  Future<List<Category>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Category> data = [];
    response.body.forEach((v) {
      data.add(Category.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Category>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Category>.fromJson(response.body);
  }

  Future<ResponseModel<Category>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Category>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Category item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
