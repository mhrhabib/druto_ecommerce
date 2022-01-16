import 'package:druto_ecommerce/shared/styles/colors.dart';
import 'package:druto_ecommerce/shared/styles/dimensions.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Dubai',
  primaryColor: Color(0xFF533C6C),
  brightness: Brightness.light,
  accentColor: Colors.white,
  focusColor: Color(0xFFADC4C8),
  hintColor: Color(0xFF754D7F).withOpacity(0.6),
  textTheme: TextTheme(
    button: TextStyle(color: Colors.white),
    headline5: TextStyle(fontSize: 20.0),
    headline1: TextStyle(
        fontWeight: FontWeight.w200,
        color: ColorResources.COLOR_BLACK,
        fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline2: TextStyle(
        fontWeight: FontWeight.w400,
        color: ColorResources.COLOR_BLACK,
        fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline3: TextStyle(
        fontWeight: FontWeight.w600,
        color: ColorResources.COLOR_BLACK,
        fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline4: TextStyle(
        fontWeight: FontWeight.w800,
        color: ColorResources.COLOR_BLACK,
        fontSize: Dimensions.FONT_SIZE_DEFAULT),
    subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
    headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
    bodyText2: TextStyle(fontSize: 12.0),
    bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
    caption: TextStyle(fontSize: 12.0),
  ),
);
