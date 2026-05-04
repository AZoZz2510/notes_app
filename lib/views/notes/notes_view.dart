import 'package:flutter/material.dart';
import 'package:notes_app/views/notes/widgets/notes_view_body.dart';

import '../../core/utils/size_config.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            NotesViewBody(),
          ],
        )
      
      ),
    );
  }
}
