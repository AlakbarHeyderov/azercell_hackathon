import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';

AppBar appBarRow(
  String text,
  bool button, {
  bool centerTitle = true,
  double size = 18,
  Color appBarBackgroundColor = Colors.white,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return AppBar(
      // automaticallyImplyLeading: false,
      backgroundColor: appBarBackgroundColor,
      titleSpacing: 0,
      elevation: 0.0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: centerTitle == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          Container(
            width: 16,
            height: 19,
            child: button == true
                ? InkWell(
                    onTap: () {},
                    child: Image.asset('assets/images/warning.png'),
                  )
                : null,
          ),
          Text(
            text,
            style: myStyle(
              size: size,
              color: MyColor.firsColor(),
              fontWeight: bold,
            ),
          ),
          Container(
            width: 21,
            height: 18,
            child: button == true
                ? InkWell(
                    onTap: () {},
                    child: Image.asset('assets/images/search.png'))
                : null,
          ),
        ],
      ));
}
