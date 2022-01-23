// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavigationBarItemSection(String menu) {
  double width = 26.0;
  double height = 27.0;

  return BottomNavigationBarItem(
    activeIcon: Image.asset(
      'assets/images/' + menu + '.png',
      width: width,
      height: height,
      color: Colors.blue,
    ),
    icon: Image.asset(
      'assets/images/' + menu + '.png',
      width: width,
      height: height,
    ),
    label: '',
  );
}
