import 'dart:convert';

import 'package:beauty_app/app/utils/api_constants.dart';
import 'package:beauty_app/app/utils/auth_interceptor.dart';
import 'package:get/get.dart';

class BaseProvider<T> extends GetConnect {
  String? endpoint;
  Map<String, dynamic> filter = {"take": 10, "skip": 0};

  BaseProvider(String endpoint) {
    this.endpoint = ApiConstants.baseUrl + endpoint;
    // httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
  }

  init() {
    return this;
  }

  @override
  void onInit() {
    // httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
  }

  Future<Response> getItemResp(int id) async {
    print("GET $endpoint/$id");
    return await get('$endpoint/$id');
  }

  Future<Response> getListResp() async {
    print("GET $endpoint");
    return get('$endpoint');
  }

  String setFilter({
    String? filterJson,
    List? filters,
    String filterLogic = "and",
    String? filterField,
    dynamic filterValue,
    String filterOperator = "eq",
    int take = 10,
    int skip = 0,
    List? sort,
    String? sortField,
    String sortDir = "desc",
  }) {
    filter = {};
    if (filterJson != null) {
      filter = jsonDecode(filterJson);
    }
    filter["take"] = take;
    filter["skip"] = skip;
    if (filters != null) {
      filter["filter"] = {"logic": filterLogic, "filters": filters};
    } else if (filterField != null && filterValue != null) {
      filter["filter"] = {
        "logic": filterLogic,
        "filters": [
          {
            "field": filterField,
            "value": filterValue,
            "operator": filterOperator
          }
        ]
      };
    }
    if (sort != null) {
      filter["sort"] = sort;
    } else if (sortField != null) {
      filter["sort"] = [
        {"field": sortField, "dir": sortDir}
      ];
    }
    return jsonEncode(filter);
  }

  Future<Response> postListResp({String? customFilter}) async {
    print("GET/POST $endpoint/list: " + (customFilter ?? jsonEncode(filter)));
    Response resp = await post(
      "$endpoint/list",
      customFilter ?? jsonEncode(filter),
      contentType: "application/json",
    );
    print("GET/POST $endpoint/list: " + resp.body.toString());
    return resp;
  }

  Future<Response<T>> postResp(T item) async {
    print("POST $endpoint: " + jsonEncode(item));
    Response<T> resp = await post(endpoint, jsonEncode(item));
    print("POST $endpoint: " + resp.body.toString());
    return resp;
  }

  Future<Response<T>> putResp(T item, int id) async {
    print("PUT $endpoint: " + item.toString());
    Response<T> resp = await put("$endpoint/$id", item);
    print("PUT $endpoint: " + resp.body.toString());
    return resp;
  }

  Future<bool> deleteResp(int id) async {
    print("DELETE $endpoint/$id");
    Response response = await delete('$endpoint/$id');
    return (response.body == "Ok");
  }

  Future<Response> customGetRep(String url) async {
    print("GET $endpoint/$url");
    return await get('$endpoint/$url');
  }

  Future<Response> getCollection(String slug) async {
    Response resp =
        await get('${ApiConstants.baseUrl}/tr/common/collection/$slug');
    List idFilter = [];
    print(
        "GET ${ApiConstants.baseUrl}/tr/common/collection/$slug ${resp.body}");
    jsonDecode(resp.body).forEach((id) {
      idFilter.add({
        "field": "id",
        "operator": "eq",
        "value": id,
      });
    });
    filter["filter"] = {"logic": "or", "filters": idFilter};
    return await postListResp();
  }
}
