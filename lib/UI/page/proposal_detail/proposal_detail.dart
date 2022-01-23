import 'package:azercell_hackathon/UI/global/methods/app_bar.dart';
import 'package:azercell_hackathon/contoller/idea_details.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:azercell_hackathon/core/style/padding/page_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ProductDetailController _productDetailController = Get.find();

class ProposalDetail extends StatelessWidget {
  const ProposalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarRow(
        _productDetailController.product[0].firstName,
        false,
        size: 24,
      ),
      body: Container(
        padding: PagePadding.only(),
        color: MyColor.pageBackground(),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Problem',
              style: myStyle(size: 20, color: MyColor.textColor()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Text(
                '${_productDetailController.product[0].firstName} ' * 15,
                style: myStyle(size: 16, color: MyColor.textColor()),
              ),
            ),
            Text(
              'Solution',
              style: myStyle(size: 20, color: MyColor.textColor()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                '${_productDetailController.product[0].firstName} ' * 70,
                style: myStyle(size: 16, color: MyColor.textColor()),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 21),
              child: Container(
                height: 30,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 6, left: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Center(
                            child: Text(
                              _productDetailController.product[0].lastName,
                              style: myStyle(size: 12, color: MyColor.white()),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  Text(
                    'Owner:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '${_productDetailController.product[0].firstName} ${_productDetailController.product[0].lastName}',
                    style: myStyle(size: 18, color: MyColor.textColor()),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  Text(
                    'Company:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'A company',
                    style: myStyle(size: 18, color: MyColor.textColor()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Contribute',
                    style: myStyle(size: 24, color: MyColor.white()),
                  )),
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
