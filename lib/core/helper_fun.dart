import 'package:flutter/material.dart';
import 'package:my_qauran_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class HelperFun{
  static bool isLight(BuildContext context ){
    var myProvider = Provider.of<SettingProvider>(context,listen: false);
    return myProvider.currentTheme == ThemeMode.light;
  }

  static bool isEn(BuildContext context){
    var myProvider = Provider.of<SettingProvider>(context,listen: false);
    return myProvider.currentLocale == 'en';
  }
}