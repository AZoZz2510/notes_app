import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/core/utils/space_widget.dart';
import 'package:notes_app/core/widgets/custom_text_field.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../notes/presentation/manager/notes_cubit/notes_cubit.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({super.key, required this.note});
  final NotesModel note;

  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Node',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes(); // تحديث الشاشة فوراً
              Navigator.pop(context);

            },
          ),
          VerticalSpace(5),
          CustomTextFormField(
            title: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          VerticalSpace(2),
          CustomTextFormField(
            title: widget.note.subTitle,
            lineCunt: 7,
            onChanged: (value) {
              subTitle = value;
            },
          ),
        ],
      ),
    );
  }
}
