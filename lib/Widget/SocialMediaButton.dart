import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  String? url;
   SocialMediaButton({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
          
         child: Image(image:  AssetImage(url!)),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
          boxShadow:   [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), 
      ),
    ],
         ),
        );
  }
}