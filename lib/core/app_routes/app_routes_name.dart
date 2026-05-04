

import 'package:flutter/cupertino.dart';

import '../../features/notes/notes_view.dart';

class AppRoutesName {
  AppRoutesName._();
  static const String notes="/notes";


}

class Routes{
  Routes._();
  static  Map<String,Widget Function(BuildContext)> routes= {
    AppRoutesName.notes:(_)=>const NotesView(),



  };

}