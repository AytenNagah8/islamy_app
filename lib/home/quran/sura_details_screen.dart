import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyy/app_colors.dart';
import 'package:islamyy/home/quran/item_suraDetails_screen.dart';
import 'package:islamyy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura details';
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(verses.isEmpty){
    loadFile(args.suraNumber); }

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
    title: Text(args.suraName,
    style: Theme.of(context).textTheme.bodyLarge,
    ),
    ),
      body: verses.isEmpty ? Center(child: CircularProgressIndicator())
      : //else
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
        child: ListView.separated(
    separatorBuilder: (context, index){
    return  Divider(
    color: provider.isDarkMode() ?
    AppColors.yellowColor
    :
    AppColors.whiteColor,
    thickness: 2,
    );
    },

          itemBuilder: (context, index){
            return ItemSuraDetailsScreen(content : verses[index], index: index  ,);
          },
          itemCount: verses.length,


        ),
      ),
    )
   ] );
  }

  /// function to read the data, depends on ta2ssimet le txt file
  void loadFile(int fileNumber) async {
    String content = await rootBundle.loadString('assets/files/${fileNumber+1}.txt');
    List <String> lines = content.split("\n"); /// list comes in the future
    for(int i =0;i<lines.length;i++){
      print(lines[i]);
    }
    verses = lines;
    setState(() {

    });
  }
}

/// data class we will send arguments
class SuraDetailsArgs{
    String suraName ;
    int suraNumber;
  SuraDetailsArgs({required this.suraName, required this.suraNumber});

}
