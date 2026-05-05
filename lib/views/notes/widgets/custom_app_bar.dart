import 'package:flutter/material.dart';
import 'package:notes_app/views/notes/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
