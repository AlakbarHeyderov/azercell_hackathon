import 'package:azercell_hackathon/UI/global/methods/app_bar.dart';
import 'package:azercell_hackathon/UI/global/text_field/text_field.dart';
import 'package:azercell_hackathon/UI/page/login/method/button.dart';
import 'package:azercell_hackathon/core/style/color/page_collor.dart';
import 'package:azercell_hackathon/core/style/padding/page_padding.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarRow('Azercell Hackathon', false),
      body: SingleChildScrollView(
        child: Container(
            color: MyColor.pageBackground(),
            child: Padding(
              padding: PagePadding.only(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: MyColor.buttonColor(),
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'E-mail',
                    style: myStyle(
                      size: 18,
                      color: MyColor.textColor(),
                      fontWeight: w500,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFieldWidget(
                    hintText: 'e-mail',
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  productButton(
                      title: 'Next',
                      toNamedNavigation: '/person_info',
                      color: MyColor.buttonColor(),
                      toNamed: false),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OR',
                        style: myStyle(size: 22, color: MyColor.textColor()),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 20,
                  ),
                  productButton(
                      toNamed: false,
                      title: 'Sign in with Google',
                      toNamedNavigation: '/person_info',
                      color: MyColor.googleButtonColor()),
                  SizedBox(
                    height: 10,
                  ),
                  productButton(
                      toNamed: false,
                      title: 'Sign in with Facebook',
                      toNamedNavigation: '/person_info',
                      color: MyColor.facebookButtonColor()),
                ],
              ),
            )),
      ),
    );
  }
}
