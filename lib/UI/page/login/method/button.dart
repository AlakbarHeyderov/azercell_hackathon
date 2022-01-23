import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container productButton(
    {required String title,
    required String toNamedNavigation,
    required Color color,
    required bool toNamed}) {
  return Container(
    width: double.infinity,
    height: 44,
    child: ElevatedButton(
      onPressed: () {
        toNamed == true
            ? Get.toNamed(toNamedNavigation)
            : Get.offAllNamed(toNamedNavigation);
      },
      child: Text(
        title,
        style: myStyle(size: 16, color: MyColor.white(), fontWeight: w400),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
    ),
  );
}
