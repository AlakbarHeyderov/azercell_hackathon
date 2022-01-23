import 'dart:math';

import 'package:azercell_hackathon/UI/page/home/business_idea/business_idea.dart';
import 'package:azercell_hackathon/UI/page/home/idea/idea.dart';
import 'package:azercell_hackathon/contoller/home_controller.dart';
import 'package:azercell_hackathon/contoller/idea_details.dart';
import 'package:azercell_hackathon/contoller/test_controller.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:azercell_hackathon/core/style/padding/page_padding.dart';
import 'package:azercell_hackathon/data/service/home_data_dorce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ProductDetailController _productDetailController = Get.find();
HomController _homController = Get.find();

class HomeScreen extends GetView<TestController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: PagePadding.only(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _homController.myHomeList[0].title,
                  style: myStyle(size: 18, color: MyColor.textColor()),
                ),
                InkWell(
                  onTap: () {
                    HomeService().getData();
                    Get.toNamed('/seeall');
                  },
                  child: Text(
                    'see all',
                    style: myStyle(size: 18, color: MyColor.textColor()),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 235,
                child: ListView.builder(
                    itemCount: _homController.myHomeList[0].items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _productDetailController.product.clear();
                          _productDetailController.product
                              .add(_homController.myHomeList[0].items[index]);
                          _productDetailController.viewProductIdeaDetails();
                          // print(
                          //     _homController.myHomeList[0].items[index].title);
                          // Get.toNamed('ideaDetail');
                        },
                        child: IdeaCompanent(
                          score:
                              _homController.myHomeList[0].items[index].upvotes,
                          title:
                              _homController.myHomeList[0].items[index].title,
                          image: _homController
                              .myHomeList[0].items[index].imageUrl,
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _homController.myHomeList[1].title,
                  style: myStyle(size: 18, color: MyColor.textColor()),
                ),
                InkWell(
                  onTap: () {
                    // /businessdetail
                  },
                  child: Text(
                    'see all',
                    style: myStyle(size: 18, color: MyColor.textColor()),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 235,
                child: ListView.builder(
                    itemCount: _homController.myHomeList[1].items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _productDetailController.product.clear();
                          _productDetailController.product
                              .add(controller.myList[index]);
                          _productDetailController.viewProductBusinessetails();
                        },
                        child: BusinessIdea(
                            score: Random().nextInt(190),
                            title:
                                _homController.myHomeList[1].items[index].title,
                            description: _homController
                                .myHomeList[1].items[index].description
                            // image: 'assets/images/test3.png',
                            ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _homController.myHomeList[2].title,
                  style: myStyle(size: 18, color: MyColor.textColor()),
                ),
                InkWell(
                  child: Text(
                    'see all',
                    style: myStyle(size: 18, color: MyColor.textColor()),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 235,
                child: ListView.builder(
                    itemCount: _homController.myHomeList[2].items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _productDetailController.product.clear();
                          _productDetailController.product
                              .add(controller.myList[index]);
                          _productDetailController.viewProductProposal();
                        },
                        child: IdeaCompanent(
                          score: Random().nextInt(190),
                          title: _homController
                              .myHomeList[2].items[index].companyTitle,
                          image: _homController
                              .myHomeList[2].items[index].imageUrl,
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
