import 'package:flutter/material.dart';
import 'package:todo_app_nti/Core/Recources_Manager/Style/Colors/app_colors.dart';

class AppButton extends StatelessWidget {
  final String buttontext;
  final Widget nextScreen;
  const AppButton(
      {super.key, required this.buttontext, required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return nextScreen;
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: AppColors.buttonColor,
                  offset: Offset(0, 5)),
            ],
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(14)),
        width: 331,
        height: 48.01129913330078,
        child: Text(
          buttontext,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 19,
              color: Colors.white,
              fontFamily: "LexendDeca"),
        ),
      ),
    );
  }
}
