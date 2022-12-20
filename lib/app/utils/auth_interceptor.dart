import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import '../services/storage_service.dart';

FutureOr<Request> authInterceptor(request) async {
  print("trying to intercept");
  var authToken = await StorageService().read(key: "authToken");
  if (authToken != null && authToken != "authToken") {
    print("intercepting token $authToken");
    request.headers['Authorization'] = 'Bearer $authToken';
  }
  request.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxOTUiLCJpYXQiOjE2NzE1MDc0MDAsImV4cCI6MTY3MjExMjIwMH0.voUzSWUVNueXwmILRUSyaDs-bMR1hTycqgpqPdY5k73jpSQ8vqpJ6EFImY7yBorBuYHoMJhLQhkzrL7KcOTiyw';


  return request;
}
