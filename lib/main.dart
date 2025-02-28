import 'package:flutter/material.dart';
import 'package:todo_app_nti/Style/Colors/app_colors.dart';
import 'package:todo_app_nti/ToDoAppScreens/lets_start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: LetsStartScreen(),
    );
  }
}
