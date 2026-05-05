import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/space_widget.dart';
import 'package:notes_app/core/widgets/custom_search_icon.dart';
import 'package:notes_app/core/widgets/custom_text_field.dart';

import '../../../core/widgets/custom_app_bar.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Node', icon: Icons.check),
          VerticalSpace(5),
          CustomTextFormField( title: "title"),
          VerticalSpace(2),
          CustomTextFormField(title: "content",lineCunt: 7,),
        ],
      ),
    );
  }
}
