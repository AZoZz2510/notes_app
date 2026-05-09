import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_state.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            //  print("failed ${state.errorMessage}");
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
         builder: (BuildContext context, AddNotesState state) {
          return AbsorbPointer(
            absorbing:state is AddNotesLoading ?true:false ,//بتمنع التعامل ف التكست فيلد عشان اليوزر ميخدش اي اكشنت اثناء اللودينج
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.only(right: 16,left: 16,top: 10,
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: const AddNoteForm(),
              ),
            ),
          );

    },

      ),
    );
  }
}
