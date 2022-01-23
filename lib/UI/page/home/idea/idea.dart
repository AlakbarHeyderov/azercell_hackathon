// ignore_for_file: must_be_immutable

import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IdeaCompanent extends StatelessWidget {
  String title;
  String image;
  int score;

  IdeaCompanent({
    required this.title,
    required this.image,
    required this.score,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 175,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(image), fit: BoxFit.cover, opacity: 0.5),
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // shadow positionu nu deyis
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/like.png',
                  color: MyColor.white(),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  score.toString(),
                  style: myStyle(size: 18, color: MyColor.white()),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  title,
                  style: myStyle(size: 18, color: MyColor.white()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
