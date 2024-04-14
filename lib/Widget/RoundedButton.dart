import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String? text;
  double?width;
  Color?textcolor;
   Function()? ontap;

  RoundedButton({this.text,this.ontap,this.width = 330,this.textcolor = Colors.white,});

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap:ontap ,
      child: Container(
        padding: EdgeInsets.all(15),
        width: width,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(50),
          //   side: BorderSide( color: colorborderside!)
          // ),
        ),
        child: Center(
          child: Text(
            text.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textcolor,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 0.08,
              letterSpacing: 0.16,
            ),
          ),
        ),
      ),
    );
  }
}
