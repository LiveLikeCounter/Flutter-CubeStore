import 'package:flutter/material.dart';

class CustomThemes 
{
  // static const WhiteTheme = Theme.of(context).copyWith(canvasColor: Colors.white);
}

class CustomColors 
{
  static const Color Gold = Color.fromRGBO(132, 106, 49, 1);

  static const Color GoldButton1 = Color.fromRGBO(221, 182, 103, 1);
  static const Color GoldButton2 = Color.fromRGBO(122, 97, 43, 1);

  static const Color GreyHeaderText = Color.fromRGBO(170, 171, 172, 1);

  static const Color LiniarBlack1 = Color.fromRGBO(52, 58, 61, 1);
  static const Color LiniarBlack2 = Color.fromRGBO(37, 40, 44, 1);
  static const Color LiniarBlack3 = Color.fromRGBO(24, 26, 29, 1);

  static const Color LiniarGold1 = Color.fromRGBO(190, 170, 101, 1);
  static const Color LiniarGold2 = Color.fromRGBO(130, 70, 12, 1);

  static const Color LiniarGreen1 = Color.fromRGBO(64, 121, 86, 1);
  static const Color LiniarGreen2 = Color.fromRGBO(41, 75, 54, 1);

  static const Color LiniarGrey1 = Color.fromRGBO(111, 109, 104, 1);
  static const Color LiniarGrey2 = Color.fromRGBO(58, 57, 52, 1);

  static const Color BlackBorder1 = Color.fromRGBO(34, 38, 43, 1);
  static const Color BlackBorder2 = Color.fromRGBO(20, 21, 22, 1);
}

class CustomTextStyles 
{
  static const TextStyle HeaderTextLarge = TextStyle(fontSize: 35, fontWeight: FontWeight.w500, color: CustomColors.GreyHeaderText);
  static const TextStyle HeaderTextSmall = TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: CustomColors.GreyHeaderText);
  static const TextStyle MoneyHeader = TextStyle(fontSize: 30 , fontWeight: FontWeight.w500, color: CustomColors.Gold);
  static const TextStyle ButtonText = TextStyle(fontSize: 14 , fontWeight: FontWeight.w600, color: Colors.white);
}


