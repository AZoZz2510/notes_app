import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/app_routes/app_routes_name.dart';
import 'package:notes_app/features/edit_notes/presentation/views/edit_notes_view.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';

import '../../../../core/utils/space_widget.dart';
import '../manager/notes_cubit/notes_cubit.dart';


class CustomNoteItem extends StatelessWidget {
  final NotesModel note;
  const CustomNoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder:  (context){
          return EditNotesView(note:note);
        }) );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                maxLines: 1,
                overflow:TextOverflow.ellipsis ,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(
                  note.subTitle,
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis ,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes(); // تحديث الشاشة فوراً
                },
                icon: FaIcon(FontAwesomeIcons.trash, color: Colors.black, size: 30),
              ),
            ),
            VerticalSpace(3),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
          ],
        ),
        // child: Padding(
        //   padding: EdgeInsets.all(24),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         flex: 3,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               "Flutter tips",
        //               style: TextStyle(
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.w500,
        //                 color: Colors.black,
        //               ),
        //             ),
        //
        //             VerticalSpace(1),
        //
        //             Text(
        //               "build your career with abdelaziz shaban kjfdjfne",
        //               style: TextStyle(fontSize: 16, color: Colors.black),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Expanded(
        //         flex: 1,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.end,
        //           children: [
        //             VerticalSpace(3),
        //             Icon(Icons.delete, size: 35, color: Colors.black),
        //             Spacer(),
        //             Text(
        //               "May 21,2026",
        //               style: TextStyle(fontSize: 12, color: Colors.black),
        //             ),
        //             VerticalSpace(1),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
