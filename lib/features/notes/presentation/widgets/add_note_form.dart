import 'package:flutter/cupertino.dart';

import '../../../../core/utils/space_widget.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title ,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(lineCunt: 1, title: 'Title',
            onSaved: (value){
              title=value;
            },),
          VerticalSpace(2),
          CustomTextFormField(lineCunt: 6,  title: 'Content',onSaved: (value){
            subTitle=value;
          },),
          VerticalSpace(2),
          CustomGeneralButtons(title: "Add",
              onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }else{
                  autovalidateMode=AutovalidateMode.always;
                }

              }),
          const VerticalSpace(2),

        ],
      ),
    );
  }
}
