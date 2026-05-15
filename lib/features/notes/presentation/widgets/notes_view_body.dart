import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_list_view.dart';

import '../../../../core/utils/space_widget.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../manager/notes_cubit/notes_cubit.dart';


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
            CustomAppBar(title: "Notes", icon: Icons.search, onSearchChanged: (value) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes(query: value);
            },),
            const VerticalSpace(2), // مسافة بسيطة بين البار والليست
            Expanded(
              child:  NotesListView(), // الـ Expanded هنا هي اللي هتحل المشكلة
            ),
          ],
        )
    );
  }
}

