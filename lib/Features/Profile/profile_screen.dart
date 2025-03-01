import 'package:flutter/material.dart';
import 'package:todo_app_nti/Features/Profile/profile_card.dart';
import 'package:todo_app_nti/Features/Profile/profile_options.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Icons/app_icons.dart';
import 'package:todo_app_nti/Features/LogIn/login_screen.dart';
import 'package:todo_app_nti/Features/Add%20Task/settings_screen.dart';

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
