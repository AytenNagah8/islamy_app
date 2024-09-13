import 'package:flutter/material.dart';
import 'package:islamyy/home/quran/sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
  String suraName ;
  int suraNumber; //to call the index of the item in the list
  ItemSuraName({super.key, required this.suraName, required this.suraNumber});  ///constructor

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
        arguments: SuraDetailsArgs(
          suraName: suraName,
          suraNumber: suraNumber
        ));
      },
      child: Text(suraName,
      style: Theme.of(context).textTheme.bodySmall ,
      textAlign: TextAlign.center)
    );
  }
}
