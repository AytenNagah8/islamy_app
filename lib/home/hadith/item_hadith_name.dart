import 'package:flutter/material.dart';
import 'package:islamyy/home/hadith/hadeth_model.dart';
import 'package:islamyy/home/hadith/hadith_details_screen.dart';
import 'package:islamyy/home/hadith/hadith_tab.dart';

class ItemHadithName extends StatelessWidget {
  HadethData hadith;
  ItemHadithName({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadithDetailsScreen.routeName,
        arguments: hadith);

      },
      child: Text(
        hadith.hadithTitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }

}
class Hadithhh{
  String title;
  List <String>content;
  Hadithhh({required this.title, required this.content});

}

