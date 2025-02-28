import 'package:flutter/material.dart';
import 'package:todo_app_nti/Categories/profile_card.dart';
import 'package:todo_app_nti/Categories/profile_options.dart';
import 'package:todo_app_nti/Style/Icons/app_icons.dart';
import 'package:todo_app_nti/ToDoAppScreens/login_screen.dart';
import 'package:todo_app_nti/ToDoAppScreens/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileCard(),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ));
                  },
                  child: ProfileOptions(
                    icon: AppIcons.profileIcon,
                    title: 'Update Profile',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SettingsScreen();
                    }));
                  },
                  child: ProfileOptions(
                    icon: AppIcons.settingIcon,
                    title: 'Settings',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
