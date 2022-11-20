import 'dart:convert';

import 'package:beauty_app/app/data/models/user.dart';
import 'package:beauty_app/app/data/providers/user_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final storage = const FlutterSecureStorage();
  UserProvider userProvider = UserProvider();
  User? user;
  String? verificationEmail;
  String? code;

  Future<AuthService> init() async {
    return this;
  }

  Future<String?> read({required String key}) {
    return storage.read(key: key);
  }

  void write({required String key, required String value}) {
    storage.write(key: key, value: value);
  }

  Future<String> login(String username, String password) async {
    Response response = await userProvider.login(username, password);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      storage.write(key: "authToken", value: response.body["token"]);
      user = User.fromJson(response.body["user"]);
      return "Ok";
    } else if (response.statusCode == 401) {
      return "wrong.email.password".tr;
    }
    return "login.error".tr;
  }

  Future<String> register(Map<String, String> fields) async {
    print("Registering with " + jsonEncode(fields));
    Response response = await userProvider.register(fields);
    if (response.statusCode == 200) {
      return "Ok";
    } else if (response.statusCode == 400) {
      return response.body["message"];
    }
    return "Fail";
  }

  /*Future<void> googleLogin() async {
    _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
    try {
      _googleSignIn.onCurrentUserChanged
          .listen((GoogleSignInAccount? account) async {
        print("account");
        print(account);
        if (account != null) {
          String result = await register({
            "username": account.email,
            "email": account.email,
            "password": "${account.id}\$alt",
          });
          print("result $result");
          result = await login(account.email, "${account.id}\$alt");
          if (result == "Ok") {
            Get.offNamed('/home');
          }
          /*if (result == "Ok") {
          } else {
            ToastUtils.snackbar(text: "This email is already in-use");
          }*/
        }
      });
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }*/

  Future<void> logout() async {
    user = null;
  }

  sendVerificationCodeToEmail({String? email}) async {
    if (email == null && verificationEmail == null) {
      return "Fail";
    }
    Response response =
        await userProvider.sendEmail(email ?? verificationEmail!);
    if (response.statusCode == 200) {
      verificationEmail = email;
      code = response.body;
      return response.body;
    } else {
      return "Fail"; // response.body["message"];
    }
  }

  resetPassword(String password) async {
    if (verificationEmail != null) {
      Response response =
          await userProvider.resetPassword(verificationEmail!, password);
      if (response.statusCode == 200) {
        return "Ok";
      } else if (response.statusCode == 400) {
        return response.body["message"];
      }
    }
    return "Fail";
  }

  bool verify(String text) {
    return text == code;
  }
}
