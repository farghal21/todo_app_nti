import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TasksCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  final Color titleColor;
  final Color subtitleColor;
  final Color containerBackgrounColor;
  final Color iconBackgrounColor;
  const TasksCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.titleColor,
      required this.subtitleColor,
      required this.containerBackgrounColor,
      required this.iconBackgrounColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      width: 234,
      height: 90,
      decoration: BoxDecoration(
          color: containerBackgrounColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: titleColor,
                    fontFamily: "LexendDeca"),
              ),
              Spacer(),
              Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                      color: iconBackgrounColor,
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    icon,
                    width: 12,
                    height: 12,
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              subtitle,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: subtitleColor,
                  fontFamily: "LexendDeca"),
            ),
          ),
        ],
      ),
    );
  }
}
