import 'package:flutter/material.dart';
import 'package:notes_app/core/app_routes/app_routes_name.dart';

void main() {
  runApp(const NotesApp ());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: AppRoutesName.notes,
      routes: Routes.routes,
    );
  }
}
