import 'package:beauty_app/app/data/models/organization.dart';
import 'package:get/get.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class OrganizationProvider extends BaseProvider {
  OrganizationProvider() : super('/mobile/view/organization');

  Future<Organization> getItem(int id) async {
    final response = await super.getItemResp(id);
    return Organization.fromJson(response.body);
  }

  Future<ResponseModel<Organization>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<Organization>.fromJson(response.body);
  }

  Future<ResponseModel<Organization>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<Organization>.fromJson(response.body);
  }

  Future<bool> postItem(Organization item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(Organization item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }
}
