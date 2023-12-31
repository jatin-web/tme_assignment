import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tme_pune/view/screen/story_screen.dart';

class StatusButton extends StatelessWidget {
  const StatusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, StoryScreen.routeName);
      },
      child: DottedBorder(
        borderType: BorderType.Circle,
        color: Colors.grey,
        strokeWidth: 2,
        dashPattern: const [20, 10],
        padding: const EdgeInsets.all(6),
        child: Center(
          child: CircleAvatar(
            radius: 18,
            child: Image.asset("assets/icons/jar.png"),
          ),
        ),
      ),
    );
  }
}
