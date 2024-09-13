import 'package:flutter/material.dart';
import 'package:islamyy/app_colors.dart';

class MyThemeData{
  // colours of all the app in light and dark
  // light mode colours
  static ThemeData lightTheme = ThemeData(
    canvasColor: AppColors.primaryLightColor, /// for old version
    primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor :Colors.transparent,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      centerTitle: true,
        iconTheme: IconThemeData( // to make the return icon in black
            color: AppColors.blackColor
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      showUnselectedLabels: true
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600
      ),
      bodySmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        color: AppColors.blackColor
      ),
      titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w100,
          color: AppColors.blackColor
      )
    )

  );

  // dark mode colours
  static ThemeData darkTheme = ThemeData(
      canvasColor: AppColors.primaryDarkColor, /// for old version
      primaryColor: AppColors.primaryDarkColor,
      scaffoldBackgroundColor :Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData( // to make the return icon in black
              color: AppColors.whiteColor
          )
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.yellowColor,
          unselectedItemColor: AppColors.whiteColor,
          showUnselectedLabels: true
      ),
      textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor
          ),
          bodyMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            color: AppColors.whiteColor,
          ),
          bodySmall: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor
          ),
          titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w100,
              color: AppColors.whiteColor
          )
      )

  );


}