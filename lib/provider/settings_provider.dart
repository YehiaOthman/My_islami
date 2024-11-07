import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {

  ThemeMode currentTheme = ThemeMode.light;

   void switchTheme(String newTheme){
   if(newTheme == 'light'){
     currentTheme = ThemeMode.light;
   }
   else{
     currentTheme = ThemeMode.dark;
   }
   notifyListeners();
  }


}