import 'dart:convert';

import 'package:beauty_app/app/data/models/user.dart';
import 'package:get/get.dart';
import '../models/response_model.dart';
import 'base_provider.dart';

class UserProvider extends BaseProvider {
  UserProvider() : super('/auth');

  Future<User> getItem(int id) async {
    final response = await super.getItemResp(id);
    return User.fromJson(response.body);
  }

  Future<ResponseModel<User>> getList() async {
    Response response = await super.getListResp();
    return ResponseModel<User>.fromJson(response.body);
  }

  Future<ResponseModel<User>> postList() async {
    Response response = await super.postListResp();
    return ResponseModel<User>.fromJson(response.body);
  }

  Future<bool> postItem(User item) async {
    Response response = await super.postResp(item);
    return response.statusCode == 200;
  }

  Future<bool> putItem(User item) async {
    Response response = await super.putResp(item, item.id!);
    return response.statusCode == 200;
  }

  Future<bool> deleteItem(int id) async {
    return await super.deleteResp(id);
  }

  Future<Response> login(String email, String password) async {
    return await post("$endpoint/signin",
        jsonEncode({"username": email, "password": password}));
  }

  Future<Response> register(Map<String, String> fields) async {
    return await post("$endpoint/register", jsonEncode(fields));
  }

  Future<Response> sendEmail(String email) async {
    return await post("$endpoint/send-code", jsonEncode({"username": email}));
  }

  Future<Response> resetPassword(String username, String password) async {
    return await post(
      "$endpoint/reset-password",
      jsonEncode(
        {
          "username": username,
          "password": password,
        },
      ),
    );
  }
}
