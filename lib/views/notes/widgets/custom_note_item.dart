import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/app_routes/app_routes_name.dart';

import '../../../core/utils/space_widget.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, AppRoutesName.editNotes);
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter tips",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(
                  "Build your career with abdelaziz shaban ",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.trash, color: Colors.black, size: 30),
              ),
            ),
            VerticalSpace(3),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "May 21,2026",
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
