import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes_app/features/notes/data/notes_model.dart';

@immutable
sealed class NotesState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class NotesInitial extends NotesState {

}


class NotesUpdated extends NotesState {
  final List<NotesModel> notes;

  NotesUpdated(this.notes);

  @override
  List<Object?> get props => [notes];
}
