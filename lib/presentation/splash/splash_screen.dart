import 'package:flutter/material.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import '../../core/assets_manger.dart';
import '../../core/routes_manger.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesManger.homeScreen);
    });
    return Scaffold(
        body: Image.asset(
      HelperFun.isLight(context) ? AssetsManger.lightSplashScreen : AssetsManger.darkSplashScreen,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ));
  }
}
