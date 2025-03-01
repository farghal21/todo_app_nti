import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_nti/Features/LogIn/app_button.dart';
import 'package:todo_app_nti/Features/Add%20Task/textform_container.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Colors/app_colors.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Icons/app_icons.dart';
import 'package:todo_app_nti/Features/Home/home_screen.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String? selectedTaskGroup;

  final List<Map<String, dynamic>> options = [
    {"name": "Home", "icon": AppIcons.homeIcon, "Color": AppColors.pinkColor},
    {"name": "Work", "icon": AppIcons.bagIcon, "Color": Colors.black},
    {
      "name": "Personal",
      "icon": AppIcons.personIcon,
      "Color": AppColors.buttonColor
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.arrow2Icon),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 331,
            height: 63,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
              hint: Text(
                "Select task group",
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    fontFamily: "LexendDeca"),
              ),
              isExpanded: true,
              icon: SvgPicture.asset(AppIcons.arrowDownIcon),
              value: selectedTaskGroup,
              items: options.map((option) {
                return DropdownMenuItem<String>(
                  value: option["name"],
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: option["Color"],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SvgPicture.asset(
                          option["icon"]!,
                          width: 24,
                          height: 24,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        option["name"]!,
                        style: TextStyle(
                          color: Color(0xff24252C),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: "LexendDeca",
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedTaskGroup = value;
                });
              },
            )),
          ),
          TextformContainer(
              labelText: 'Task Name', hintText: 'Enter task name', heightc: 63),
          TextformContainer(
            labelText: 'Description',
            hintText: 'Enter task description...',
            heightc: 150,
          ),
          AppButton(buttontext: "Save", nextScreen: HomeScreen())
        ],
      ),
    );
  }
}
