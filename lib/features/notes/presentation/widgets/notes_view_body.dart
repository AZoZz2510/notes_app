import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_list_view.dart';

import '../../../../core/utils/space_widget.dart';
import '../../../../core/widgets/custom_app_bar.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: // في ملف NotesViewBody
        Column(
          children: [
            VerticalSpace(2),
            const CustomAppBar(title: "Notes", icon: Icons.search,),
            const VerticalSpace(2), // مسافة بسيطة بين البار والليست
            Expanded(
              child: const NotesListView(), // الـ Expanded هنا هي اللي هتحل المشكلة
            ),
          ],
        )
    );
  }
}

