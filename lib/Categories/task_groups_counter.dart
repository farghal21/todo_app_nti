import 'package:flutter/material.dart';

class TaskGroupsCounter extends StatelessWidget {
  final String num;
  final Color backgroundColor;
  final Color numColor;
  const TaskGroupsCounter(
      {super.key,
      required this.num,
      required this.backgroundColor,
      required this.numColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: 22,
      height: 23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          num,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: numColor,
              fontFamily: "LexendDeca"),
        ),
      ),
    );
  }
}
