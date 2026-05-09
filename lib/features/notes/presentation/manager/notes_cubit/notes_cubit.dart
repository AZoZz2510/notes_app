import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/presentation/manager/notes_cubit/notes_state.dart';

import '../../../../../core/constant/constant.dart';
import '../../../data/notes_model.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super(NotesInitial());


  void fetchAllNotes()async{
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      List<NotesModel> listOfNotes =notesBox.values.toList();
      emit(NotesSuccess(listOfNotes) );
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }



}