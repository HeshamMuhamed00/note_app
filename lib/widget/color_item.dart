import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.greenAccent,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 30,
              child: const Icon(
                Icons.check,
                size: 35,
                color: Colors.greenAccent,
              ),
            ),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}
