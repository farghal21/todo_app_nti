import 'package:flutter/material.dart';
import 'package:todo_app_nti/Categories/profile_card.dart';
import 'package:todo_app_nti/Categories/task_groups.dart';
import 'package:todo_app_nti/Categories/task_groups_counter.dart';
import 'package:todo_app_nti/Categories/tasks_card.dart';
import 'package:todo_app_nti/Style/Colors/app_colors.dart';
import 'package:todo_app_nti/Style/Icons/app_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(
              icon: AppIcons.plusIcon,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              width: 335,
              height: 135,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your today’s tasks",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "LexendDeca"),
                  ),
                  Text(
                    "almost done!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "LexendDeca"),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "80",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
                            color: Colors.white,
                            fontFamily: "LexendDeca"),
                      ),
                      Text(
                        "%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.white,
                            fontFamily: "LexendDeca"),
                      ),
                      Spacer(),
                      Container(
                        width: 121,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                            child: Text(
                          "View Tasks",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: AppColors.buttonColor,
                              fontFamily: "LexendDeca"),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "In Progress",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: "LexendDeca"),
                  ),
                  Container(
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 14,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.containerBackgrroundColor),
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.buttonColor,
                            fontFamily: "LexendDeca"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  TasksCard(
                      title: 'Work Task',
                      subtitle: 'Add New Features',
                      icon: AppIcons.bagIcon,
                      titleColor: Colors.white,
                      subtitleColor: Colors.white,
                      containerBackgrounColor: Color(0xff1D1C1B),
                      iconBackgrounColor: AppColors.buttonColor),
                  TasksCard(
                      title: 'Personal Task',
                      subtitle: 'Improve my English skills by trying to speak',
                      icon: AppIcons.personIcon,
                      titleColor: Color(0xff6E6A7C),
                      subtitleColor: Color(0xff24252C),
                      containerBackgrounColor:
                          AppColors.containerBackgrroundColor,
                      iconBackgrounColor: AppColors.buttonColor),
                  TasksCard(
                      title: 'Home Task',
                      subtitle: 'Add new feature for Do It app and commit it',
                      icon: AppIcons.homeIcon,
                      titleColor: Color(0xff6E6A7C),
                      subtitleColor: Color(0xff24252C),
                      containerBackgrounColor: AppColors.pinkContainerColor,
                      iconBackgrounColor: AppColors.pinkColor)
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Task Groups",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "LexendDeca"),
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TaskGroups(
                      title: 'Personal Task',
                      backgroundColor: AppColors.containerBackgrroundColor,
                      iconColor: AppColors.buttonColor,
                      icon: AppIcons.personIcon,
                      taskGroupCounter: TaskGroupsCounter(
                        num: '5',
                        backgroundColor: AppColors.containerBackgrroundColor,
                        numColor: AppColors.buttonColor,
                      ),
                    ),
                    TaskGroups(
                      title: 'Home Task',
                      backgroundColor: AppColors.pinkContainerColor,
                      iconColor: AppColors.pinkColor,
                      icon: AppIcons.homeIcon,
                      taskGroupCounter: TaskGroupsCounter(
                        num: '3',
                        backgroundColor: AppColors.pinkContainerColor,
                        numColor: AppColors.pinkColor,
                      ),
                    ),
                    TaskGroups(
                      title: 'Work Task',
                      backgroundColor: Color(0xff1D1C1B),
                      iconColor: Colors.white,
                      icon: AppIcons.bagIcon,
                      taskGroupCounter: TaskGroupsCounter(
                        num: '1',
                        backgroundColor: Colors.black,
                        numColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
