// ignore_for_file: prefer_const_constructors

import 'package:azercell_hackathon/UI/page/favorits/favorist.dart';
import 'package:azercell_hackathon/UI/page/home/home_screen.dart';
import 'package:azercell_hackathon/UI/page/main/method/bottom_navigation_bar.dart';
import 'package:azercell_hackathon/UI/page/more/more_page.dart';
import 'package:azercell_hackathon/contoller/bottom_navigation_bar.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(),
      MorePage(),
      FavoritPage(),
      MorePage(),
    ];
    BottomNavigationBarController bottomBarIndex = Get.find();
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            selectedItemColor: MyColor.secoundColor(),
            unselectedItemColor: Colors.black,
            unselectedFontSize: 12,
            currentIndex: bottomBarIndex.currentIndex.value,
            onTap: (index) => bottomBarIndex.currentIndex.value = index,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: [
              bottomNavigationBarItemSection('home'),
              bottomNavigationBarItemSection('favorite'),
              bottomNavigationBarItemSection('notification'),
              bottomNavigationBarItemSection('profile'),
            ],
          ),
          resizeToAvoidBottomInset: false,
          body: screens[bottomBarIndex.currentIndex.value],
        ));
  }
}
