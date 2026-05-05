
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/space_widget.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../../core/widgets/custom_text_field.dart';

class AddNodeBottomSheet extends StatelessWidget {
  const AddNodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomTextFormField(lineCunt: 1, title: 'Title',),
            VerticalSpace(2),
            CustomTextFormField(lineCunt: 7,  title: 'Content',),
            VerticalSpace(2),
            CustomGeneralButtons(title: "Add", onPressed: (){}),
            VerticalSpace(3),
            
            
            
          ],
        ),
      ),
    );
  }
}