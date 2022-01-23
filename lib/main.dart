// ignore_for_file: prefer_const_constructors

import 'package:azercell_hackathon/blinding/home_bilding.dart';
import 'package:azercell_hackathon/core/roots/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(
    GetMaterialApp(
      title: "investBaku",
      initialRoute: '/',
      initialBinding: HomeBinding(),
      defaultTransition: Transition.cupertinoDialog,
      getPages: AppPages.pages,
    ),
  );
}
