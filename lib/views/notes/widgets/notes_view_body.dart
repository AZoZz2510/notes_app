import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/notes/widgets/notes_list_view.dart';

import '../../../core/utils/space_widget.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: // في ملف NotesViewBody
      Column(
        children: [
          const CustomAppBar(),
          const VerticalSpace(2), // مسافة بسيطة بين البار والليست
          Expanded(
            child: const NotesListView(), // الـ Expanded هنا هي اللي هتحل المشكلة
          ),
        ],
      )
    );
  }
}

