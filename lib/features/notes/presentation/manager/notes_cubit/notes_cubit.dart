import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';
import 'package:notes_app/features/notes/presentation/manager/notes_cubit/notes_state.dart';
import '../../../../../core/constant/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModel>? notes;

  void fetchAllNotes({String? query}) {
    var notesBox = Hive.box<NotesModel>(kNotesBox);

    notes = notesBox.values.toList();

    // 2. لو اليوزر كاتب حاجة في السيرش، هفلتر allNotes
    List<NotesModel> displayNotes = notes!;
    if (query != null && query.isNotEmpty) {
      displayNotes = notes!.where((note) {
        return note.title.toLowerCase().contains(query.toLowerCase()); // التعديل: البحث في العنوان فقط
      }).toList();
    }

    // 3. ابعت الـ State الجديدة بالليستة (سواء كاملة أو متفلترة)
    emit(NotesUpdated(displayNotes));
  }
}