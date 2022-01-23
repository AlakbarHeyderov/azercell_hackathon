import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColor extends Color {
  MyColor.pageBackground() : super(0xFFE5E5E5);
  MyColor.mainColor() : super(0xFFFF004A);
  MyColor.buttonColor() : super(0xFF7BC4D3);
  MyColor.facebookButtonColor() : super(0xFF4267B2);
  MyColor.googleButtonColor() : super(0xFFd34836);
  MyColor.firsColor() : super(0xFF31415D);
  MyColor.secoundColor() : super(0xFF526484);
  MyColor.textColor() : super(0xFF31415D);
  MyColor.white() : super(0xFFFFFFFF);
  MyColor.black() : super(0xFF000000);
}

final FontStyle italic = FontStyle.italic;
final FontWeight bold = FontWeight.bold;
final FontWeight normal = FontWeight.normal;
final FontWeight w100 = FontWeight.w100;
final FontWeight w200 = FontWeight.w200;
final FontWeight w300 = FontWeight.w300;
final FontWeight w400 = FontWeight.w400;
final FontWeight w500 = FontWeight.w500;
final FontWeight w600 = FontWeight.w600;
final FontWeight w700 = FontWeight.w700;
final FontWeight w800 = FontWeight.w800;
final FontWeight w900 = FontWeight.w900;

TextStyle myStyle(
    {required double size,
    required Color color,
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.normal,
    dynamic letterSpacing = 0}) {
  return GoogleFonts.dmSans(fontSize: size, color: color, fontStyle: fontStyle);
}
