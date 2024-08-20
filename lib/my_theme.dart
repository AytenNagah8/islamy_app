import 'package:flutter/material.dart';
import 'package:islamyy/app_colors.dart';

class MyThemeData{
  // colours of all the app in light and dark
  static ThemeData lightTheme = ThemeData(
    canvasColor: AppColors.primaryLightColor, /// for old version
    primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor :Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      centerTitle: true
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      showUnselectedLabels: true
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor
      )
    )

  );

}