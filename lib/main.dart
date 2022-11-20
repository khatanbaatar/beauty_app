import 'package:beauty_app/app/services/auth_service.dart';
import 'package:beauty_app/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/services/storage_service.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => AuthService().init());

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons' color
  ));*/
  runApp(
    GetMaterialApp(
      title: "Beauty App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeConfig.lightTheme,
      darkTheme: ThemeConfig.darkTheme,
      themeMode: ThemeMode.light,
    ),
  );
}
