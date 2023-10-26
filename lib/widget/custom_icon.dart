import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 87, 91, 83),
          borderRadius: BorderRadius.circular(16)),
      height: 50,
      width: 50,
      child: const Icon(
        Icons.search,
        size: 32,
      ),
    );
  }
}
