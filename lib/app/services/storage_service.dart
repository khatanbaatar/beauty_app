import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class StorageService extends GetxService {
  final storage = const FlutterSecureStorage();

  Future<StorageService> init() async {
    // if (Platform.isAndroid) SharedPreferences.registerWith();
    // if (Platform.isIOS) SharedPreferences.registerWith();
    // await SharedPreferences.getInstance();
    return this;
  }

  Future<String?> read({required String key}) async {
    if (await storage.containsKey(key: key)) {
      return storage.read(key: key);
    }
    return null;
  }

  void write({required String key, required String value}) {
    storage.write(key: key, value: value);
  }

  Future<bool> isDarkMode() async {
    String? darkMode = await read(key: "isDarkMode");
    return darkMode != null && darkMode == "y";
  }
}
