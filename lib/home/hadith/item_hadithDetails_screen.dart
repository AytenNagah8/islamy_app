import 'package:flutter/material.dart';
import 'package:islamyy/my_theme.dart';
/// how the content will be shown
class ItemHadithDetailsScreen extends StatelessWidget {

String content ;
ItemHadithDetailsScreen({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
    );
  }
}
