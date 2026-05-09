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

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
 final List<NotesModel>notes;

  NotesSuccess(this.notes);

}

final class NotesFailure extends NotesState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}