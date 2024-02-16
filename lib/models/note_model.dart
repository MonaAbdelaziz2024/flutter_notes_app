import 'package:hive/hive.dart';
part 'note_model.g.dart'; // run this in terminal => flutter packages pub run build_runner build

@HiveType(typeId: 0) // unqie
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  String date;
  @HiveField(3)
  int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
