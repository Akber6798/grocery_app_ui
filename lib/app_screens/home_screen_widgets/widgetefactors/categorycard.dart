import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class CategeroryCard extends StatelessWidget {
  CategeroryCard({required this.text, required this.image});
  String text;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 74,
      decoration: BoxDecoration(
          color: const Color(0xFFE4EFDE), borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: AssetImage(image)),
          Text(text, style: cardTextStyle)
        ],
      ),
    );
  }
}
