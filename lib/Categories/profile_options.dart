import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_nti/Style/Icons/app_icons.dart';

class ProfileOptions extends StatelessWidget {
  final String title;
  final String icon;

  const ProfileOptions({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 331,
        height: 63,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: "LexendDeca"),
            ),
            Spacer(),
            SvgPicture.asset(AppIcons.arrowIcon)
          ],
        ),
      ),
    );
  }
}
