import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            hintText: 'Title',
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextFeild(
            hintText: 'Content',
            maxLines: 6,
          )
        ],
      ),
    );
  }
}
