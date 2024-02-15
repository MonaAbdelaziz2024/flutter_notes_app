import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes()async{

   
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      
     // isLoading = false;
      emit(NotesSuccess(notesBox.values.toList()));
    } catch (e) {
     // isLoading = false;
      emit(NoteFailure(e.toString()));
    }
  }
}
