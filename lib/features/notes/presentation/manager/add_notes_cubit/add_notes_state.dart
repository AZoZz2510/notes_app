import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
sealed class AddNotesState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class AddNotesInitial extends AddNotesState {

}

final class AddNotesLoading extends AddNotesState {}

final class AddNotesSuccess extends AddNotesState {}

final class AddNotesFailure extends AddNotesState {
  final String errorMessage;
  AddNotesFailure(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}