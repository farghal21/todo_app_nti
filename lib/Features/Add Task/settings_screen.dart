import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Colors/app_colors.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Icons/app_icons.dart';
import 'package:todo_app_nti/Features/Profile/profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotificationEnabled = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfileScreen();
            }));
          },
          icon: SvgPicture.asset(
            AppIcons.arrow2Icon,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Notification",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "LexendDeca"),
                ),
                Spacer(),
                Switch(
                  value: isNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isNotificationEnabled = value;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: AppColors.buttonColor,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  "Enable Cloud",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "LexendDeca"),
                ),
                Spacer(),
                InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: isChecked
                        ? SvgPicture.asset(
                            AppIcons.checkedIcon,
                          )
                        : Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff6E6A7C), width: 2),
                                borderRadius: BorderRadius.circular(4)),
                          )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
