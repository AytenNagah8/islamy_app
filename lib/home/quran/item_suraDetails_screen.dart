import 'package:flutter/material.dart';
import 'package:islamyy/my_theme.dart';
/// how the content will be shown
class ItemSuraDetailsScreen extends StatelessWidget {

String content ;
int index;
ItemSuraDetailsScreen({required this.content, required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index+1})',
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
