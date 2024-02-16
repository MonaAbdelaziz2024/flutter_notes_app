import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentColor = 0;

  List<Color> colors = [
    Color(0xff691183),
    Color(0xff7F055F),
    Color(0xffE5A4CB),
    Color(0xffcea0ae),
    Color(0xffebd2be),
    Color(0xffffe8d4),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 76,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: GestureDetector(
                  onTap: () {
                    currentColor = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    color: colors[index],
                    isActive: currentColor == index ? true : false,
                  ),
                ),
              );
            }));
  }
}
