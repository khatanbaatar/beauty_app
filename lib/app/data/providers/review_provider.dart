import 'package:get/get.dart';
import '../models/response_model.dart';
import '../models/review.dart';
import 'base_provider.dart';

class ReviewProvider extends BaseProvider {
  ReviewProvider(prefix) : super('/tr$prefix/review');

  Future<Review> getItem(int id) async {
    final response = await super.getItemResp(id);
    return Review.fromJson(response.body);
  }

  Future<Map<num, num>> getStat(int id) async {
    final response = await get('$endpoint/stat/$id');
    print("TEST - ${response.body}");
    List<dynamic> resp = response.body;
    Map<num, num> stats = {};
    for (int i = 0; i < resp.length; i++) {
      Map<String, dynamic> mapped = resp[i];
      if (mapped['rating'] != null && mapped['count'] != null) {
        stats[mapped['rating']!] = mapped['count']!;
      }
    }
    return stats;
  }

  Future<List<Review>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Review> data = [];
    response.body.forEach((v) {
      data.add(Review.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Review>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Review>.fromJson(response.body);
  }

  Future<ResponseModel<Review>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Review>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Review item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
