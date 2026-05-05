import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final int? lineCunt;
  final TextInputType? inputType;
  final ValueSetter? onChanged;
  final Widget? suffixIcon;
  final String? title;

  const CustomTextFormField({
    super.key,
    required this.inputType,
    this.onChanged,
    this.suffixIcon,
    required this.title,
    this.lineCunt=1
  });

  @override
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.MainColor,
      onChanged: onChanged,
      keyboardType: inputType,
      maxLines: lineCunt,
      decoration: InputDecoration(
        // بدل hintText هنستخدم labelText
        labelText: title,
        labelStyle: TextStyle(color: AppColors.MainColor),
        // : بيخلي الـ Label يختفي تماماً لما تضغط عليه وما يطلعش فوق
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: Colors.transparent,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(AppColors.MainColor),
      ),
    );
  }

  // عملت لك وظيفة مساعدة عشان كودك يبقى أنضف (Clean Code)
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.grey),
    );
  }
}