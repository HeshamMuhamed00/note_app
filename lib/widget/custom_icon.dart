import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 87, 91, 83),
            borderRadius: BorderRadius.circular(16)),
        height: 50,
        width: 50,
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 32,
          ),
        ));
  }
}
