import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  // bool isLoading = false;
  Color color=const Color(0xff691183);
  addNote(NoteModel note) async {
    note.color = color.value;
    //isLoading = true;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      // isLoading = false;
      emit(AddNoteSuccess());
    } catch (e) {
      // isLoading = false;
      emit(AddNoteFailure(e.toString()));
    }
  }
}
