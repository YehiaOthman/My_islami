import 'package:flutter/material.dart';
import '../../core/colors_manger.dart';

class DarkAppStyles {
  static TextStyle appbar = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30);
  static TextStyle hadithNames = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold ,color: Colors.white);
  static TextStyle hadithCard = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: ColorsManger.selectedIcon
  );
  static TextStyle hadithTitleWidget = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 25 , color: Colors.white);
  static TextStyle hadithTitle = const TextStyle(
      color: ColorsManger.selectedIcon,
      fontSize: 25,
      fontWeight: FontWeight.bold);
  static TextStyle verseName = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle verseNum = const  TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle verseNameTitleWidget = const TextStyle(fontSize: 25 ,
      fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle verseNumTitleWidget = const TextStyle(fontSize: 25 ,
      fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle verse = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,color:ColorsManger.selectedIcon
  );
  static TextStyle tasbehCountTitle = const TextStyle(fontWeight:
  FontWeight.bold, fontSize: 30 , color: Colors.white);
  static TextStyle tasbehCounter = const TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold ,color: Colors.white);
  static TextStyle tasbeh = const TextStyle( fontSize: 25
      , color: Colors.black , fontWeight: FontWeight.bold);
  static TextStyle themeTitle = const TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle selectedTheme = const TextStyle(fontSize: 20,
      fontWeight: FontWeight.bold , color: ColorsManger.selectedIcon);
  static TextStyle langTitle = const TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle selectedLang = const TextStyle(fontSize: 20,
      fontWeight: FontWeight.bold , color: ColorsManger.selectedIcon);
  static TextStyle selectedThemeWidget = const TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold,color: ColorsManger.selectedIcon);
  static TextStyle unSelectedThemeWidget = const TextStyle(fontSize: 22,
      fontWeight: FontWeight.bold , color: Colors.white);
  static TextStyle selectedLanguageWidget = const TextStyle(fontSize: 25,
      fontWeight: FontWeight.bold,color:ColorsManger.selectedIcon);
  static TextStyle unSelectedLanguageWidget = const TextStyle(fontSize: 22,
      fontWeight: FontWeight.bold , color: Colors.white);
}