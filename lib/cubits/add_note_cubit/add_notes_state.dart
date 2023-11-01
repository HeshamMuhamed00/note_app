part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoding extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {}

class AddNotesFailer extends AddNotesState {
  final String errMessage;

  AddNotesFailer(this.errMessage);
}
