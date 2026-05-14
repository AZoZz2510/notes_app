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

  // بنعرفهم late عادي
  late TextEditingController titleController;
  late TextEditingController contentController;

  @override
  void initState() {
    super.initState();
    // الخطوة دي هي اللي كانت ناقصة ومسببة الشاشة الحمراء
    // بنملا الكنترولر بالبيانات اللي جاية من الـ note الحالية
    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.subTitle);
  }

  @override
  void dispose() {
    // مهم جداً نقفلهم عشان ميسحبوش رامات على الفاضي
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              // بنعدل البيانات في الـ model
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;

              // بنحفظ في Hive
              widget.note.save();

              // بنحدث الـ UI عن طريق الـ Cubit
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();

              Navigator.pop(context);
            },
          ),
          const VerticalSpace(5),
          CustomTextFormField(
            controller: titleController,
            title: 'Title', // خلي العنوان ثابت كـ Label
            onChanged: (value) {
              title = value;
            },
          ),
          const VerticalSpace(2),
          CustomTextFormField(
            controller: contentController,
            title: 'Content',
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