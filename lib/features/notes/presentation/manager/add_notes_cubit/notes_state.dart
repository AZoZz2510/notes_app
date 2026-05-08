import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
sealed class NotesState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class NotesInitial extends NotesState {

}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {}

final class NotesFailure extends NotesState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}