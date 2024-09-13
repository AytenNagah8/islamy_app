import 'package:flutter/material.dart';
import 'package:islamyy/home/hadith/hadith_tab.dart';
import 'package:islamyy/home/quran/quran_tab.dart';
import 'package:islamyy/home/radio/radio_tab.dart';
import 'package:islamyy/home/sebha/sebha_tab.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:islamyy/providers/app_config_provider.dart';
import 'package:islamyy/settings/settings_tab.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatefulWidget {
static const String routeName = 'Home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode() ?
        Image.asset('assets/images/home_dark_background.png',
            width : double.infinity,
            height: double.infinity,
            fit: BoxFit.fill)
        :
        Image.asset('assets/images/main_background.png',
        width : double.infinity,
        height: double.infinity,
        fit: BoxFit.fill),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title,
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
            items:  [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                label: AppLocalizations.of(context)!.quran_name
              ),

              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadith_icon.png')),
                label: AppLocalizations.of(context)!.hadith
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                  label: AppLocalizations.of(context)!.sebha
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                  label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings
              )
            ],
          ),

        ),
        body: tabs[selectIndex],
      )
      ],

    );
  }
  List<Widget> tabs = [
    QuranTab(),  HadithTab(),  SebhaTab(), const RadioTab(), const SettingsTab()
  ];
}
