import 'package:flutter/material.dart';
import '../../core/colors_manger.dart';
import '../styles/light_app_styles.dart';

class MyTheme {
  static final ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: LightAppStyles.appbar),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManger.goldColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(size: 30, color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 14),
          unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 14),
          showUnselectedLabels: false,
          elevation: 0),
      iconTheme: const IconThemeData(
        size: 40,
        color: Colors.white,
      ),
      cardTheme: CardTheme(
        color: ColorsManger.goldColor.withOpacity(0.5),
        elevation: 20,
      ),
      dividerTheme:
          const DividerThemeData(color: ColorsManger.goldColor, thickness: 4),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: ColorsManger.goldColor),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(ColorsManger.goldColor))),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: ColorsManger.goldColor)
  );




  static final ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: LightAppStyles.appbar),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0XFF141A2E),
          selectedItemColor: ColorsManger.selectedIcon,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(size: 30, color: Colors.white),
          selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 14),
          unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 14),
          showUnselectedLabels: false,
          elevation: 0),
      iconTheme: const IconThemeData(
        size: 40,
        color: ColorsManger.selectedIcon,
      ),
      cardTheme: const CardTheme(
        color: Color(0XFF141A2E),
        elevation: 20,
      ),
      dividerTheme: const DividerThemeData(
          color: ColorsManger.selectedIcon, thickness: 4),
      progressIndicatorTheme: const ProgressIndicatorThemeData(color: ColorsManger.goldColor),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(ColorsManger.selectedIcon))),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Color(0XFF141A2E)));

}
