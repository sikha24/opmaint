import 'package:flutter/material.dart';

class AppColors {
  //Text Color

  static Color txtPrimary = hexToColor("#3B3B3B");
  static Color txtSecondary = hexToColor("#5C5C5C");
  static Color txtPara = hexToColor('#838383');
  static Color txtLabel = hexToColor("#A9A9A9");
  static Color txtWhite = hexToColor("#FFFFFF");
  static Color txtOrange = hexToColor('#ff4c41');

  //Button Color
  static Color btnPrimary = hexToColor('#ff4c41');
  static Color btnSecondary = hexToColor('#E9EDF3');

  //Icons & Vectors Color
  static Color iconPrimary = Colors.white;

  //Background Color
  static Color backgroundPrimary = Colors.black;
  static Color dividerPrimary = hexToColor('#E9EDF3');

  //Solid Color
  static Color lightSolid = hexToColor('#E9EDF3');
  static Color lightGrey = hexToColor('#A9A9A9');
  static Color solidGrey = hexToColor('#3B3B3B');
  static Color lightOrange = const Color.fromARGB(255, 189, 112, 11);
  static Color deepOrange = hexToColor("#ff4c41");
  static Color bloodRed = hexToColor("#EE1919");
  static Color offWhite = hexToColor('#F2F3F5');
  static Color green = hexToColor('#76D21B');

  //Function For Hex To Color
  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
