// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:azercell_hackathon/UI/page/login/login.dart';
import 'package:azercell_hackathon/contoller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class MyApp extends GetView<AppController> {
  final myPageTransition = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false, body: LoginPage());
  }
}
