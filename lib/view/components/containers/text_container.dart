import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.text, this.isSelected = false});
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: isSelected ? buttonColor1 : themeColor.withOpacity(0.2),
              width: 1)),
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
