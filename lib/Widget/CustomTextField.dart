import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  String? hintName;

   bool ispass;
  final void Function(String? value)? saved;
  final String? Function(String?) validator;
  final Widget? suffixIcon;
  final Function(String)? onchange;

  Custom_TextField(
      {this.hintName,
      this.saved,
      required this.validator,
      this.ispass = false,
      this.suffixIcon,
      this.onchange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        obscureText: ispass,
        onSaved: saved,
        validator: validator,
        onChanged:onchange ,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xFFD1D5DB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xFF3366FF)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red),
            ),
            hintText: hintName,hintStyle: TextStyle(color: Color(0xFF9CA3AF) ),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
