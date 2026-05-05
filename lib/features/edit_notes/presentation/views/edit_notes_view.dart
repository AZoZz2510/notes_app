import 'package:flutter/material.dart';
import 'package:notes_app/features/edit_notes/presentation/widgets/edit_notes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNotesBody(),
      ),
    );
  }
}
