import 'package:flutter/material.dart';
import 'colors.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
}

TextStyle getRegularStyle({double fontSize = 14, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.normal, color);
}

TextStyle getBoldStyle({double fontSize = 16, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.bold, color);
}


BoxDecoration defBoxDecoration = BoxDecoration(
    color: AppColor.white,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(16.0),
    boxShadow: const [BoxShadow(color: Colors.black26)]);
