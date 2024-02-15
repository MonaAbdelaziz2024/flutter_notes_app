import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
           
            hintText: 'Content',
            maxLines: 5,
          ),
          // SizedBox(height: 32,),
          // CustomButton(),
          // SizedBox(height: 16,),
        ],
      ),
    );
  }
}
