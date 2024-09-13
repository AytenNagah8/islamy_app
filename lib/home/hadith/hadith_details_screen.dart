import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyy/app_colors.dart';
import 'package:islamyy/home/hadith/hadeth_model.dart';
import 'package:islamyy/home/hadith/hadith_tab.dart';
import 'package:islamyy/home/hadith/item_hadithDetails_screen.dart';
import 'package:islamyy/home/quran/item_suraDetails_screen.dart';
import 'package:islamyy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class HadithDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadith details';

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
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
              title: Text(args.hadithTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body:
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width*0.02,
                  vertical: MediaQuery.of(context).size.height*0.06
              ),
              decoration: BoxDecoration(
                  color: provider.isDarkMode() ?
                  AppColors.primaryDarkColor
                      :
                  AppColors.whiteColor,

                  borderRadius: BorderRadius.circular(24)
              ),
              child: ListView.builder(
                itemBuilder: (context, index){
                  return ItemHadithDetailsScreen(content : args.hadithContent[index]);
                },
                itemCount: args.hadithContent.length,


              ),
            ),
          )
        ] );
  }

  /// function to read the data, depends on ta2ssimet el txt file
}
class HadithDetailsArgs{
  String hadithName ;
  String hadithContent;

  HadithDetailsArgs({required this.hadithName, required this.hadithContent});

}

class Hadith{
  String title;
  List <String>content;
  Hadith({required this.content, required this.title});

}


