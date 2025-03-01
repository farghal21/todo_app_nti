import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_nti/Features/Profile/profile_card.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Icons/app_icons.dart';

class NoTaskScreen extends StatelessWidget {
  const NoTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ProfileCard(icon: AppIcons.plusIcon),
              SizedBox(
                height: 30,
              ),
              Text(
                "There are no tasks yet,",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Color(0xff24252C),
                    fontFamily: "LexendDeca"),
              ),
              Text(
                "Press the button",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Color(0xff24252C),
                    fontFamily: "LexendDeca"),
              ),
              Text(
                "To add New Task",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Color(0xff24252C),
                    fontFamily: "LexendDeca"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: SvgPicture.asset(AppIcons.noTAskIcon),
              )
            ],
          ),
        ),
      ),
    );
  }
}
