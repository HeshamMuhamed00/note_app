import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.green),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 24),
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Build Your Career With Hesham Mohamed',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 32,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              'May 21,2023',
              style: TextStyle(fontSize: 16),
            ),
          )
        ]),
      ),
    );
  }
}
