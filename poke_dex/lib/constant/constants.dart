import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); //bu şekilde bu sınıftan neyse üretemezsin

  static const String title = "Pokemon";
  static const String image = "images/pokeball.png";

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateSize(48),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateSize(20),
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateSize(20));
  }

  static TextStyle getPokeInfoLabelTextStyle() {
    return TextStyle(
      fontSize: _calculateSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle getPokeInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static double _calculateSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.5).sp;
    }
  }
}
