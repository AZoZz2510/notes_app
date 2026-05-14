import 'package:flutter/material.dart';
import 'package:notes_app/features/edit_notes/presentation/widgets/edit_notes_body.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});
final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNotesBody( note: note),
      ),
    );
  }
}
