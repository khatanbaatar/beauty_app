import 'package:get/get.dart';
import '../models/product/product.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class ProductProvider extends BaseProvider {
  ProductProvider() : super('/mobile/view/product');

  Future<Product> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Product.fromJson(response.body);
  }

  Future<List<Product>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Product> data = [];
    response.body.forEach((v) {
      data.add(Product.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Product>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Product>.fromJson(response.body);
  }

  Future<ResponseModel<Product>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Product>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Product item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
