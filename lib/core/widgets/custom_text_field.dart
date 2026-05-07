import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final int? lineCunt;
  final void Function(String?)? onChanged;
  final ValueSetter? onSaved;
  final Widget? suffixIcon;
  final String? title;

  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    required this.title,
    this.lineCunt=1,
    this.onSaved
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty ?? true){
          return "Field is required";
        }else{
          return null;
        }
      },
      onSaved:onSaved ,
      cursorColor: kMainColor,
      onChanged: onChanged,
      maxLines: lineCunt,
      decoration: InputDecoration(
        // بدل hintText هنستخدم labelText
        labelText: title,
        labelStyle: TextStyle(color: kMainColor),
        // : بيخلي الـ Label يختفي تماماً لما تضغط عليه وما يطلعش فوق
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: Colors.transparent,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kMainColor),
      ),
    );
  }

  // عملت لك وظيفة مساعدة عشان كودك يبقى أنضف (Clean Code)
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.grey,width: 1.5),
    );
  }
}