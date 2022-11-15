import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import '../services/storage_service.dart';

FutureOr<Request> authInterceptor(request) async {
  // final token = StorageService.box.pull(StorageItems.accessToken);

  // request.headers['X-Requested-With'] = 'XMLHttpRequest';
  print("trying to intercept");
  var authToken = await StorageService().read(key: "authToken");
  if (authToken != null && authToken != "authToken") {
    print("intercepting token $authToken");
    request.headers['Authorization'] = 'Bearer $authToken';
  }

  return request;
}
