import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final int? lineCunt;
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final Widget? suffixIcon;
  final String? title;

  const CustomTextFormField({
    super.key,
    required this.lineCunt,
    required this.inputType,
    this.onSaved,
    this.onChanged,
    this.suffixIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged: onChanged,
      onSaved: onSaved,
      keyboardType: inputType,
      maxLines: lineCunt,
      decoration: InputDecoration(
        hintText: title,
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}
