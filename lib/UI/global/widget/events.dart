// ignore_for_file: must_be_immutable

import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EventsCompanent extends GetView {
  String data;
  String month;
  String city;
  String title;
  String description;
  String image;

  EventsCompanent({
    required this.data,
    required this.month,
    required this.city,
    required this.title,
    required this.description,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      padding: EdgeInsets.all(8),

      width: double.infinity,
      // height: 234,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
            ),
            height: 60,
            width: 60,
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            title.length > 10 ? '${title.substring(0, 10)}...' : title,
            style:
                myStyle(size: 16, color: MyColor.firsColor(), fontWeight: w400),
          ),
          Row(
            children: [
              Icon(Icons.arrow_upward_outlined),
              Text(data),
            ],
          )
        ],
      ),
    );
  }
}
