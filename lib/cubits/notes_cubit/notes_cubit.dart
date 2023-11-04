import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = notesBox.values.toList();

      emit(NotesSuccsess(notes));
    } catch (e) {
      emit(NotesFailer(e.toString()));
    }
  }
}
