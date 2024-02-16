import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentColor;

  @override
  void initState() {
    currentColor = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 76,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kColors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: GestureDetector(
                  onTap: () {
                    currentColor = index;
                    widget.note.color = kColors[index].value;

                    setState(() {});
                  },
                  child: ColorItem(
                    color: kColors[index],
                    isActive: currentColor == index ? true : false,
                  ),
                ),
              );
            }));
    ;
  }
}
