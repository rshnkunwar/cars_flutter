import 'package:blacktech_cars/config/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

//Regular Text Style
TextStyle getRegularStyle({
  double fontSize = 14,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

//Light Text Style
TextStyle getLightStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    required String fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

//Medium Text Style
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    required String fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

//Semi Bold Text Style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

//Bold Text Style
TextStyle getBoldStyle({
  double fontSize = FontSize.s14,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
