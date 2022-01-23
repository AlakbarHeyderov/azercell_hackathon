import 'package:azercell_hackathon/UI/global/methods/app_bar.dart';
import 'package:azercell_hackathon/UI/global/widget/events.dart';
import 'package:azercell_hackathon/contoller/see_all_controller.dart';
import 'package:azercell_hackathon/contoller/test_controller.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Events extends GetView<SeeAllController> {
  Events({Key? key}) : super(key: key);
  List<Widget> _myTestList = [
    Tab(
      child: Text(
        'test',
      ),
    ),
    Tab(
      child: Text('Popular'),
    ),
    Tab(
      child: Text('Nowadays'),
    ),
    Tab(
      child: Text('Test'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: appBarRow('Products', false),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 0,
                    ),
                    width: double.infinity,
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Color(0xFF1D4B91),
                      ),
                      isScrollable: true,
                      indicatorWeight: 0.001,
                      labelStyle: myStyle(
                          size: 16, color: Color(0xFFAEAEAE), fontWeight: w400),
                      unselectedLabelColor: Color(0xFF526484),
                      tabs: _myTestList,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: GetBuilder<TestController>(
                      builder: (controller) => Container(
                        margin: EdgeInsets.only(top: 16, bottom: 10),
                        width: double.infinity,
                        height: 240,
                        child: TabBarView(children: [
                          Container(
                            // width: double.infinity,
                            height: 235,
                            child: ListView.builder(
                                itemCount: 4,
                                // scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return EventsCompanent(
                                    month: 'Fev',
                                    data: (controller.myList[index].id * 3)
                                        .toString(),
                                    title: controller.myList[index].firstName,
                                    description:
                                        'Lorem ipsum dolar sitamet ipsum dola amet sitdolar…',
                                    city: controller.myList[index].lastName,
                                    image: controller.myList[index].avatar,
                                  );
                                }),
                          ),
                          Container(
                            // width: double.infinity,
                            height: 235,
                            child: ListView.builder(
                                itemCount: 4,
                                // scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return EventsCompanent(
                                    month: 'Fev',
                                    data: (controller.myList[index].id * 3)
                                        .toString(),
                                    title: controller.myList[index].firstName,
                                    description:
                                        'Lorem ipsum dolar sitamet ipsum dola amet sitdolar…',
                                    city: controller.myList[index].lastName,
                                    image: controller.myList[index].avatar,
                                  );
                                }),
                          ),
                          Container(
                            // width: double.infinity,
                            height: 235,
                            child: ListView.builder(
                                itemCount: 4,
                                // scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return EventsCompanent(
                                    month: 'Fev',
                                    data: (controller.myList[index].id * 3)
                                        .toString(),
                                    title: controller.myList[index].firstName,
                                    description:
                                        'Lorem ipsum dolar sitamet ipsum dola amet sitdolar…',
                                    city: controller.myList[index].lastName,
                                    image: controller.myList[index].avatar,
                                  );
                                }),
                          ),
                          Container(
                            // width: double.infinity,
                            height: 235,
                            child: ListView.builder(
                                itemCount: 4,
                                // scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return EventsCompanent(
                                    month: 'Fev',
                                    data: (controller.myList[index].id * 3)
                                        .toString(),
                                    title: controller.myList[index].firstName,
                                    description:
                                        'Lorem ipsum dolar sitamet ipsum dola amet sitdolar…',
                                    city: controller.myList[index].lastName,
                                    image: controller.myList[index].avatar,
                                  );
                                }),
                          ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // MenuView()
          ],
        ),
      ),
    );
  }
}
