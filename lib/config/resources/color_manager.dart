import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#317376");
  static Color primaryLight = HexColor.fromHex("#331DA1F2");
  static Color lightPrimary = HexColor.fromHex("#2C43734D");
  static Color background = HexColor.fromHex("#E5E5E5");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color black = HexColor.fromHex("#000000");
  static Color blackGrey = HexColor.fromHex("#5C5C5C");
  static Color grey = HexColor.fromHex("#C4C4C4");
  static Color grey600 = HexColor.fromHex("#475569");
  static Color greyDark = HexColor.fromHex("#7B7B7B");
  static Color lightGrey = HexColor.fromHex("#959494");
  static Color green = HexColor.fromHex("#28B446");
  static Color greenOpacity30 = HexColor.fromHex("#4828B446");
  static Color greenOpacity60 = HexColor.fromHex("#9628B446");
  static Color darkGreen = HexColor.fromHex("#36E827");

  static Color lightGreen = HexColor.fromHex("#28B4464D");
  static Color red = HexColor.fromHex("#DE1212");
  static Color redOpacity60 = HexColor.fromHex("#96DE1212");
  static Color lightRed = HexColor.fromHex("#CB26264D");
  static Color orange = HexColor.fromHex("#E35A30");
  static Color primaryOpacity70 = HexColor.fromHex("#B32C4373");
  static Color lowPrimaryLight = HexColor.fromHex("#EFF1F5");
  static Color cardBgColor = HexColor.fromHex("#a5f3c6");
  static Color cardTitleTxtColor = HexColor.fromHex("#8f4a20");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
