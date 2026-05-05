

import 'package:flutter/cupertino.dart';

import '../../features/edit_notes/presentation/views/edit_notes_view.dart';
import '../../features/notes/presentation/views/notes_view.dart';


class AppRoutesName {
  AppRoutesName._();
  static const String notes="/notes";
  static const String editNotes="/editNotes";


}

class Routes{
  Routes._();
  static  Map<String,Widget Function(BuildContext)> routes= {
    AppRoutesName.notes:(_)=>const NotesView(),
    AppRoutesName.editNotes:(_)=>const EditNotesView(),



  };

}