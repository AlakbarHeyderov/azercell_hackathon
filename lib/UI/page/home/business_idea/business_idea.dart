// ignore_for_file: must_be_immutable

import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BusinessIdea extends StatelessWidget {
  String title;
  int score;
  String description;

  BusinessIdea({
    required this.description,
    required this.score,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 175,
      decoration: BoxDecoration(
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: myStyle(size: 18, color: MyColor.white()),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  description.length > 70
                      ? '${description.substring(0, 70)}...'
                      : description,
                  style: myStyle(size: 12, color: MyColor.white()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
