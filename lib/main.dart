import 'package:flutter/material.dart';
import 'package:islamyy/home/home_screen.dart';
import 'package:islamyy/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.routeName,
  theme: MyThemeData.lightTheme,   ///class name with the object
  routes: {
    //function takes context and return a widget when clicking on the home screen
      HomeScreen.routeName : (context) => HomeScreen()
  },
    );
  }
}
