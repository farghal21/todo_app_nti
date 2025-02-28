import 'package:flutter/material.dart';
import 'package:todo_app_nti/Categories/app_button.dart';
import 'package:todo_app_nti/Style/Colors/app_font_colors.dart';
import 'package:todo_app_nti/Style/Images/images.dart';
import 'package:todo_app_nti/ToDoAppScreens/login_screen.dart';

class LetsStartScreen extends StatelessWidget {
  const LetsStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 301.70001220703125,
                height: 342.862548828125,
                child: Image.asset(
                  AppImages.letsStartImage,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Welcome To",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    fontFamily: "LexendDeca"),
              ),
              Text(
                "Do It !",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    fontFamily: "LexendDeca"),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Ready to conquer your tasks? Let's Do It together.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppFontColors.letsStartReadyColor,
                      fontFamily: "LexendDeca"),
                ),
              ),
              AppButton(
                buttontext: 'Let’s Start',
                nextScreen: LoginScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
