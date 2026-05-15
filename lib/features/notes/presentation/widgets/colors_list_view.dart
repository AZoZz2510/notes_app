import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes/presentation/manager/add_notes_cubit/add_notes_cubit.dart';

import '../../../../core/constant/constant.dart';

class ColorItem extends StatelessWidget {
  final bool isSelected;
  final Color colors;
  const ColorItem({super.key, required this.isSelected, required this.colors});
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 25, backgroundColor: colors),
          )
        : CircleAvatar(radius: 25, backgroundColor: colors);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
   int currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length ,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color=kColorsList[index];
                setState(() {

                });
              },
                child: ColorItem(isSelected: index == currentIndex, colors: kColorsList[index],))
          );
        },
      ),
    );
  }
}
