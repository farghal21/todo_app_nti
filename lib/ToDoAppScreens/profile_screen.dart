import 'package:flutter/material.dart';
import 'package:todo_app_nti/Categories/app_button.dart';
import 'package:todo_app_nti/Style/Colors/app_font_colors.dart';
import 'package:todo_app_nti/Style/Images/images.dart';
import 'package:todo_app_nti/ToDoAppScreens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 375,
                height: 446,
                child: Image.asset(
                  AppImages.palestineImage,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: 331,
                height: 63,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Your Name',
                    labelStyle: TextStyle(
                      fontFamily: 'LexendDeca',
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: AppFontColors.letsStartReadyColor,
                    ),
                    hintText: 'type your name here',
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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
              ),
              AppButton(
                buttontext: 'Save',
                nextScreen: HomeScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
