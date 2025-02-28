import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TaskGroups extends StatelessWidget {
  final String title;
  final String icon;
  final Color backgroundColor;
  final Color iconColor;
  final Widget taskGroupCounter;
  const TaskGroups(
      {super.key,
      required this.title,
      required this.icon,
      required this.backgroundColor,
      required this.iconColor,
      required this.taskGroupCounter});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        width: 335,
        height: 63,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: backgroundColor,
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                icon,
                color: iconColor,
                width: 19,
                height: 21,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: Color(0xff24252C),
                  fontFamily: "LexendDeca"),
            ),
            Spacer(),
            taskGroupCounter,
          ],
        ),
      ),
    );
  }
}
