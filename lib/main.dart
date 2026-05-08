import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/core/app_routes/app_routes_name.dart';
import 'package:notes_app/core/constant/constant.dart';
import 'package:notes_app/simple_bloc_observer.dart';

import 'features/notes/data/notes_model.dart';
import 'features/notes/presentation/manager/add_notes_cubit/add_notes_cubit.dart';

void main() async {
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNotesCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        initialRoute: AppRoutesName.notes,
        routes: Routes.routes,
      ),
    );
  }
}
