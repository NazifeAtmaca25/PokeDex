import 'package:flutter/material.dart';

class Constants {
  Constants._(); //bu şekilde bu sınıftan neyse üretemezsin

  static const String title = "Pokemon";

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontWeight: FontWeight.bold,
    );
  }
}
