import 'package:flutter/material.dart';
import '../constant/constant.dart';

class CustomTextFormField extends StatelessWidget {
  final int? lineCunt;
  final void Function(String?)? onChanged;
  final ValueSetter? onSaved;
  final Widget? suffixIcon;
  final String? title;
  // 1. إضافة الـ controller هنا
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    required this.title,
    this.lineCunt = 1,
    this.onSaved,
    // 2. تمريره في الـ Constructor
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // 3. ربطه بالـ TextFormField
      controller: controller,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kMainColor,
      onChanged: onChanged,
      maxLines: lineCunt,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(color: kMainColor),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: Colors.transparent,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kMainColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.grey, width: 1.5),
    );
  }
}