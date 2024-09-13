import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyy/app_colors.dart';
import 'package:islamyy/home/hadith/hadeth_model.dart';
import 'package:islamyy/home/hadith/hadith_tab.dart';
import 'package:islamyy/home/hadith/item_hadithDetails_screen.dart';
import 'package:islamyy/home/hadith/item_hadith_name.dart';
import 'package:islamyy/home/quran/item_suraName.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:islamyy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class HadithTab extends StatefulWidget {

  @override
  State<HadithTab> createState() => HadithTabState();
}

class HadithTabState extends State<HadithTab> {
  List <HadethData> ahadithList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    /// list of data class
    if(ahadithList.isEmpty){
      loadHadithFile();
    }
    return Container(
        child: Column(
        children: [
        Expanded(
        child: Image.asset('assets/images/hadith_header.png'),
    ),
     Divider(
    color:  provider.isDarkMode() ?
    AppColors.yellowColor
        :
    AppColors.primaryLightColor,
         thickness: 3,
    ),
    Text(AppLocalizations.of(context)!.hadith_name,
    style: Theme.of(context).textTheme.bodyMedium
    ),
     Divider(
    color: provider.isDarkMode() ?
    AppColors.yellowColor
        :
    AppColors.primaryLightColor,
        thickness: 3,
    ),
          Expanded(
            flex: 2,

    child:  ahadithList.isEmpty ?
    Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryLightColor,
      ),
    )
    :
    ListView.separated(
      itemBuilder: (context,index){
        return ItemHadithName(hadith: ahadithList[index]) ;
      },
    separatorBuilder: (context, index){
    return Divider(
    color: provider.isDarkMode() ?
    AppColors.yellowColor
        :
    AppColors.primaryLightColor,
    thickness: 2,
    );
    },
    itemCount:ahadithList.length),
    )
    ],
    )
    );
  }

  void loadHadithFile()async{
   String hadithContent = await rootBundle.loadString('assets/files/ahadeth.txt');
  List <String> hadithList = hadithContent.split('#\r\n');
  for (int i =0;i<hadithList.length;i++){
    print(hadithList[i]);
   List <String> hadithLines= hadithList[i].split('\n');
   String hadithTitle = hadithLines[0];
   hadithLines.removeAt(0);
   HadethData hadithh = HadethData(hadithContent: hadithLines, hadithTitle: hadithTitle);
   ahadithList.add(hadithh);
   setState(() {

   });
  }
  }
}
/// data class

