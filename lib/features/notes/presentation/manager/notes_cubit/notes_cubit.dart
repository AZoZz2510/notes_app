import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/presentation/manager/notes_cubit/notes_state.dart';

import '../../../../../core/constant/constant.dart';
import '../../../data/notes_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModel>? notes;
  void fetchAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    emit(NotesInitial());
    // بدلاً من map، استخدمنا List.from عشان نضمن إننا بنبعت نسخة جديدة تماماً من العناصر
    notes = List.from(notesBox.values);

    // هنا بنعمل emit لحالة جديدة تماماً
    emit(NotesUpdated(notes!));
  }
}