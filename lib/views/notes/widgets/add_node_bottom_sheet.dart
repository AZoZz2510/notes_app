
import 'package:flutter/cupertino.dart';

import '../../../core/utils/space_widget.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../../core/widgets/custom_text_field.dart';

class AddNodeBottomSheet extends StatelessWidget {
  const AddNodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomTextFormField(lineCunt: 1, inputType: null, title: 'Title',),
          VerticalSpace(2),
          CustomTextFormField(lineCunt: 7, inputType: null, title: 'Content',),
          Spacer(),
          CustomGeneralButtons(title: "Add", onPressed: (){}),
          VerticalSpace(2),



        ],
      ),
    );
  }
}