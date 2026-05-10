import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/core/constant/constant.dart';
import 'package:notes_app/features/notes/presentation/manager/notes_cubit/notes_cubit.dart';

import 'package:notes_app/features/notes/presentation/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_view_body.dart';

import '../../../../core/utils/size_config.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        resizeToAvoidBottomInset: true, // تأكد إنها true
        floatingActionButton: FloatingActionButton(
          backgroundColor: kMainColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context) {
              return AddNoteBottomSheet();
            });
          },
          child: Icon(Icons.add, color: Colors.black,),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}


