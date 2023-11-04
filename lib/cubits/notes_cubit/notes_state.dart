part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccsess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccsess(this.notes);
}

final class NotesFailer extends NotesState {
  final String errMessage;

  NotesFailer(this.errMessage);
}