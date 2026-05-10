import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_state.dart';

import '../../../../core/utils/space_widget.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            lineCunt: 1,
            title: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          VerticalSpace(2),
          CustomTextFormField(
            lineCunt: 6,
            title: 'Content',
            onSaved: (value) {
              subTitle = value;
            },
          ),
          VerticalSpace(2),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomGeneralButtons(
                isLoading: state is AddNotesLoading ? true : false,
                title: "Add",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate=DateTime.now();
                    var formattedCurrentDate=DateFormat.yMEd().format(currentDate);
                    var noteModel = NotesModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedCurrentDate,
                      color: Colors.redAccent.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    // لازم setState هنا عشان الـ UI يتحدث ويظهر الخطأ أو يغير الحالة
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          const VerticalSpace(2),
        ],
      ),
    );
  }
}
