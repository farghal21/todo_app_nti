import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Colors/app_font_colors.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Images/images.dart';
import 'package:todo_app_nti/Features/Add%20Task/add_task.dart';
import 'package:todo_app_nti/Features/Profile/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  final String? icon;
  const ProfileCard({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImages.palestineImage),
                  radius: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello!",
                        style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: AppFontColors.helloColor),
                      ),
                      Text(
                        "Ahmed Saber",
                        style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: AppFontColors.helloColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Spacer(),
        if (icon != null)
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AddTask();
                },
              ));
            },
            icon: SvgPicture.asset(icon!),
          ),
      ],
    );
  }
}
