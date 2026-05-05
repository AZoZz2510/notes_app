import 'package:flutter/material.dart';

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
          color: Colors.green,
          borderRadius:  BorderRadius.circular(10)

        ),
        child: Center(
          child: Text(title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500
          ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}





