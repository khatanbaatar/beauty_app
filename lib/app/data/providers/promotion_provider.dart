import 'package:beauty_app/app/data/models/promotion.dart';
import 'package:get/get.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class PromotionProvider extends BaseProvider {
  PromotionProvider(prefix) : super('/api/mobile/view/promotion');

  Future<Promotion> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Promotion.fromJson(response.body);
  }

  Future<List<Promotion>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Promotion> data = [];
    response.body.forEach((v) {
      data.add(Promotion.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Promotion>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Promotion>.fromJson(response.body);
  }

  Future<ResponseModel<Promotion>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Promotion>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Promotion item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
