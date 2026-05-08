import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_state.dart';

import '../../../../../core/constant/constant.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit():super(AddNotesInitial());

  void AddNote(NotesModel note)async
   {
     emit(AddNotesLoading());
     try{
       var notesBox=Hive.box<NotesModel>(kNotesBox);
       await notesBox.add(note);
       emit(AddNotesSuccess());

     }catch(e){
       emit(AddNotesFailure(e.toString()));
     }

  }
}