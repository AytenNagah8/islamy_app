import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyy/main.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'ar';
  ThemeMode appTheme = ThemeMode.light;

  void changeLanguage(String newLanguage){
      if(appLanguage == newLanguage){
        return ;
      }
      else
        {
          appLanguage = newLanguage;
          notifyListeners();
        }

  }

  void changeTheme(ThemeMode newMode){
    if(appTheme == newMode)
      return ;
    appTheme = newMode;
    notifyListeners();
  }
  bool isDarkMode(){
    return appTheme == ThemeMode.dark;
  }
}