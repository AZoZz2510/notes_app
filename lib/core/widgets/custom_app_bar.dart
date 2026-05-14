import 'package:flutter/material.dart';
import 'package:notes_app/core/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
   final void Function()? onPressed;
  const CustomAppBar( {super.key, required this.title, required this.icon, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        CustomIcon(icon:icon, onPressed: onPressed!,),
      ],
    );
  }
}
