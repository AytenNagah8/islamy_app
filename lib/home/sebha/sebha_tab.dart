import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  static const String routeName = 'Sebha';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children : [
          Image.asset('assets/images/sebhaHead.png',
          alignment: Alignment.bottomRight,),
            Image.asset('assets/images/sebhaBody.png',
              alignment: Alignment.topLeft,),
            Text('عدد التسبيحات',
                style: Theme.of(context).textTheme.bodyLarge),

      ]
    )
    );
  }
}
