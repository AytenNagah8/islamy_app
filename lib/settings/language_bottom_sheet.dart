import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:islamyy/app_colors.dart';
import 'package:islamyy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  late AppConfigProvider provider ;
  @override
  Widget build(BuildContext context) {
     provider = Provider.of<AppConfigProvider>(context);
    return Container(
      color: provider.isDarkMode() ?
      AppColors.primaryDarkColor
          :
      AppColors.whiteColor,
      // margin: EdgeInsets.all(30),
      child: Column(
          crossAxisAlignment : CrossAxisAlignment.stretch,
          children: [
          InkWell( //english
            onTap:() {
              provider.changeLanguage("en");
            },
            child: provider.appLanguage == 'en' ?
                getSelectedItemWidget(AppLocalizations.of(context)!.english)
                : getUnselectedItemWidget(AppLocalizations.of(context)!.english)
              // in the last case arabic will be the selected lang
          ),
            SizedBox(height: 15),

          InkWell( //arabic
            onTap: (){
              provider.changeLanguage('ar');
            },
              child:   provider.appLanguage ==  'ar' ?
              getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
                  :  getUnselectedItemWidget(AppLocalizations.of(context)!.arabic)

          ),

        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text){
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
      Text(text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: provider.isDarkMode() ?
              AppColors.yellowColor
                  :
              Theme.of(context).primaryColor
          )),
      Icon(Icons.check,size: 35,
          color:  provider.isDarkMode() ?
          AppColors.yellowColor
              :
          Theme.of(context).primaryColor)
    ]);
}
Widget getUnselectedItemWidget(String text){
return Text(text,
    style: Theme.of(context).textTheme.bodyMedium);
}
}
