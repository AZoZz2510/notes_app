import 'package:flutter/material.dart';
import 'package:notes_app/core/theme/app_colors.dart';
import 'package:notes_app/core/utils/space_widget.dart';
import 'package:notes_app/core/widgets/custom_buttons.dart';
import 'package:notes_app/core/widgets/custom_text_field.dart';
import 'package:notes_app/views/notes/widgets/add_node_bottom_sheet.dart';
import 'package:notes_app/views/notes/widgets/notes_view_body.dart';

import '../../core/utils/size_config.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.MainColor,
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context){
              return AddNodeBottomSheet();
            });
          },
          child:Icon(Icons.add,color: Colors.black,),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}


