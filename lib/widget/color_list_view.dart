import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> color = const [
    Color(0xffc52233),
    Color(0xffa51c30),
    Color(0xffa7333f),
    Color(0xff74121d),
    Color(0xff580c1f),
    Color(0xff580c4f),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: color.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: color[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}