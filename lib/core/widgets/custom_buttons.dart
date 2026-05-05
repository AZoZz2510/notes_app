import 'package:flutter/material.dart';
import 'package:notes_app/core/theme/app_colors.dart';

import '../utils/size_config.dart';

class CustomGeneralButtons extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomGeneralButtons({super.key, required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: SizeConfig.screenWidth,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.MainColor,
          borderRadius:  BorderRadius.circular(10)

        ),
        child: Center(
          child: Text(title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}





