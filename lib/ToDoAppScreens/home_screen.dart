import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_nti/Style/Colors/app_font_colors.dart';
import 'package:todo_app_nti/Style/Images/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
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
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/Icons/PlusIcon.svg'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
