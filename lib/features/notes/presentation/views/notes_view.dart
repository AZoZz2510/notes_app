import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/app_colors.dart';

import 'package:notes_app/features/notes/presentation/widgets/add_node_bottom_sheet.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_view_body.dart';

import '../../../../core/utils/size_config.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kMainColor,
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


