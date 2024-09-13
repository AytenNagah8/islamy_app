// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:islamyy/home/hadith/hadith_details_screen.dart';
import 'package:islamyy/home/home_screen.dart';
import 'package:islamyy/home/quran/sura_details_screen.dart';
import 'package:islamyy/home/sebha/sebha_tab.dart';
import 'package:islamyy/my_theme.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:provider/provider.dart';
import 'package:islamyy/providers/app_config_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(),
  child : MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.routeName,

  theme: MyThemeData.lightTheme,   //class name with the object
      themeMode: provider.appTheme,
  darkTheme: MyThemeData.darkTheme,

  routes: { //function takes context and return a widget when clicking on the home screen
      HomeScreen.routeName : (context) => const HomeScreen(),
    SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
    HadithDetailsScreen.routeName : (context) => HadithDetailsScreen(),
    SebhaTab.routeName : (context) => SebhaTab()
  },
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
