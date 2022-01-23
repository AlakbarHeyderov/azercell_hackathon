import 'package:azercell_hackathon/UI/global/methods/app_bar.dart';
import 'package:azercell_hackathon/contoller/idea_details.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:azercell_hackathon/core/style/padding/page_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectProduct extends StatelessWidget {
  const SelectProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarRow(
        'What is your idea type ?',
        false,
        size: 24,
      ),
      body: Container(
        color: MyColor.pageBackground(),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: PagePadding.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'I want it!',
                          style: myStyle(size: 24, color: MyColor.white()),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Upvote',
                          style: myStyle(size: 24, color: MyColor.white()),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: PagePadding.only(),
              child: Container(
                height: 30,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 6, left: 6),
                        // padding: EdgeInsets.only(left: ),
                        // height: 20,
                        // width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        // color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Center(
                            child: Text(
                              'Text',
                              style: myStyle(size: 12, color: MyColor.white()),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: PagePadding.only(),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: myStyle(size: 20, color: MyColor.textColor()),
                    ),
                    Text(
                      'Text ' * 70,
                      style: myStyle(size: 16, color: MyColor.textColor()),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: PagePadding.only(),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Text(
                      'Owner:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      ' Text 2 2 ',
                      style: myStyle(size: 18, color: MyColor.textColor()),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
