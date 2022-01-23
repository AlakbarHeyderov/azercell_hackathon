// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hintText;

  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  Widget? prefixIcon;
  bool paswordType;
  bool credidCard;
  bool monthCreditCard;
  TextFieldWidget(
      {Key? key,
      this.prefixIcon,
      this.paswordType = false,
      this.credidCard = false,
      this.monthCreditCard = false,
      required this.hintText,
      required this.keyboardType,
      required this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: paswordType,
      keyboardType: keyboardType,
      textInputAction: textInputAction,

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
            borderRadius: BorderRadius.circular(8)),
        fillColor: Color(0xFFFFFFFF),
        filled: true,
        prefixIcon: prefixIcon,
        hintText: hintText,
        prefixStyle: TextStyle(color: Colors.black),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      // inputFormatters: credidCard == true
      //     ? [
      //         MaskedTextInputFormatter(
      //           mask: monthCreditCard ? 'xx/xx' : 'xxxx xxxx xxxx xxxx',
      //           separator: monthCreditCard ? '/' : ' ',
      //         ),
      //       ]
      //     : []
    );
  }
}
