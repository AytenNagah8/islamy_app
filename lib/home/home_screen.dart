import 'package:flutter/material.dart';
import 'package:islamyy/home/hadith/hadith_tab.dart';
import 'package:islamyy/home/quran/quran_tab.dart';
import 'package:islamyy/home/radio/radio_tab.dart';
import 'package:islamyy/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = 'Home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
        width : double.infinity,
        height: double.infinity,
        fit: BoxFit.fill),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islamy",
          style: Theme.of(context).textTheme.bodyLarge,
          ),

        ),
        bottomNavigationBar: Theme( ///we took a copy from the app theme and edit canvas
          data: Theme.of(context).copyWith(
    canvasColor: Theme.of(context).primaryColor
    ),
          child: BottomNavigationBar(
            currentIndex: selectIndex,
            onTap: (index){
              selectIndex = index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                label: 'Quran'
              ),

              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadith_icon.png')),
                label: 'Hadith'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                  label: 'Sebha'
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                  label: 'Radio'
              ),
            ],
          ),

        ),
        body: tabs[selectIndex],
      )
      ],

    );
  }
  List<Widget> tabs = [
    QuranTab(), HadithTab(), SebhaTab(), RadioTab()
  ];
}
