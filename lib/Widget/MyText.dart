import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String? text;
  Color? color;
  double? fontsize;
  MyText({ this.text, this.color,this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text??'pola',
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.bold,
        height: 0.04,
      ),
    );
  }
}
