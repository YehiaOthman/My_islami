import 'package:flutter/material.dart';
import 'package:my_qauran_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import '../my_app/my_app.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => SettingProvider(),child:const MyApp(), ));
}

