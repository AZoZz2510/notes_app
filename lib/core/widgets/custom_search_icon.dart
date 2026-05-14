import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const CustomIcon({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 5,
      width: SizeConfig.defaultSize! * 5,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(  onPressed: onPressed, icon: Icon(icon,size: 30,) ),
    );
  }
}
