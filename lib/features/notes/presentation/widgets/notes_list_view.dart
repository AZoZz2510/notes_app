import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_state.dart';
import 'package:notes_app/features/notes/presentation/manager/notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/manager/notes_cubit/notes_state.dart';

import '../../../../core/utils/space_widget.dart';
import '../../data/notes_model.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel> notes = [];
        if (state is NotesUpdated) {
          notes = state.notes; // "notes" هنا بنفس الاسم اللي في الـ State عندك
        } else {
          // لو لسه في البداية، ممكن نجيب الداتا الأساسية
          notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        }        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            // ضيف السطر ده
            itemBuilder: (context, index) {
              return CustomNoteItem(note: notes[index]);
            },
            separatorBuilder: (context, index) {
              return const VerticalSpace(1);
            },
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
