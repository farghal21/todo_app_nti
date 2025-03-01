import 'package:flutter/material.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Colors/app_font_colors.dart';

class TextformContainer extends StatelessWidget {
  final String labelText;
  final String hintText;
  final double heightc;
  const TextformContainer(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.heightc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: 331,
      height: heightc,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontFamily: 'LexendDeca',
            fontWeight: FontWeight.w400,
            fontSize: 9,
            color: AppFontColors.letsStartReadyColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'LexendDeca',
            fontWeight: FontWeight.w200,
            fontSize: 14,
            color: AppFontColors.letsStartReadyColor,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
        ),
      ),
    );
  }
}
