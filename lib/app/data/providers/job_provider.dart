import 'package:get/get.dart';
import '../models/job/job.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class JobProvider extends BaseProvider {
  JobProvider() : super('/mobile/view/job');

  Future<Job> getItem(int id) async {
    final response = await super.get('$endpoint/item/$id');
    return Job.fromJson(response.body);
  }

  Future<List<Job>> getAll() async {
    Response response = await get('${endpoint}s');
    List<Job> data = [];
    response.body.forEach((v) {
      data.add(Job.fromJson(v));
    });
    return data;
  }

  Future<ResponseModel<Job>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Job>.fromJson(response.body);
  }

  Future<ResponseModel<Job>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Job>.fromJson(response.body);
  }

  Future<bool> postItem(item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Job item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
