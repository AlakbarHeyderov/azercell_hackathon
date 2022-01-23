// ignore_for_file: deprecated_member_use

import 'package:azercell_hackathon/UI/global/methods/app_bar.dart';
import 'package:azercell_hackathon/UI/global/text_field/text_field.dart';
import 'package:azercell_hackathon/UI/page/login/method/button.dart';
import 'package:azercell_hackathon/UI/page/person_information/model/radio_moel.dart';
import 'package:azercell_hackathon/UI/page/person_information/widget/radio_item.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:azercell_hackathon/core/style/padding/page_padding.dart';
import 'package:flutter/material.dart';

class PersonInformation extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<PersonInformation> {
  List<RadioModel> sampleData = [];

  @override
  void initState() {
    super.initState();
    sampleData.add(new RadioModel(false, '', 'I am looking for an idea'));
    sampleData.add(new RadioModel(false, '', 'I have an idea'));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBarRow('Intreduce yourself', false,
          centerTitle: false,
          fontWeight: bold,
          size: 24,
          appBarBackgroundColor: MyColor.pageBackground()),
      body: Container(
        color: MyColor.pageBackground(),
        child: Padding(
          padding: PagePadding.only(),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                  hintText: 'Name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                  hintText: 'Surname',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: sampleData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      splashColor: Colors.blueAccent,
                      onTap: () {
                        setState(() {
                          sampleData
                              .forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                        });
                      },
                      child: RadioItem(sampleData[index]),
                    );
                  },
                ),
              ),
              productButton(
                  toNamed: false,
                  title: 'Save',
                  toNamedNavigation: '/main',
                  color: MyColor.buttonColor()),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
