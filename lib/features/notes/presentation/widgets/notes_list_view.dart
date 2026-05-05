import 'package:flutter/cupertino.dart';

import '../../../../core/utils/space_widget.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.separated(
       physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero, // ضيف السطر ده
        itemBuilder: (context, index) {
         return const CustomNoteItem();
      } ,
        separatorBuilder: (context, index) {
         return const VerticalSpace(1);
      },
        itemCount: 6,
      ),
    );
  }
}
