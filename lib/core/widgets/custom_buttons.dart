import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class CustomGeneralButtons extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomGeneralButtons({super.key, required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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



class CustomButtonWithIcon extends StatelessWidget {
  final String? title;
  final String? image;
  final VoidCallback onPressed;

  const CustomButtonWithIcon({
    super.key,
    required this.title,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // لون الظل وشفافيته
              spreadRadius: 5, // مدى انتشار الظل بعيداً عن العنصر
              blurRadius: 7, // درجة نعومة أو "غباش" الظل
              offset: Offset(0, 3), // مكان الظل (x, y) - هنا نازل لتحت شوية
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black.withOpacity(0.2), width: 1.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image!, width: SizeConfig.defaultSize! * 4),
            SizedBox(width: SizeConfig.defaultSize),
            Text(title!, style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}

