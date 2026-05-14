import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/core/app_routes/app_routes_name.dart';
import 'package:notes_app/core/constant/constant.dart';
import 'package:notes_app/simple_bloc_observer.dart';

import 'features/notes/data/notes_model.dart';
import 'features/notes/presentation/manager/notes_cubit/notes_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>(kNotesBox); // ضيف <NotesModel> هنا

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        initialRoute: AppRoutesName.notes,
        routes: Routes.routes,
      ),
    );
  }
}
