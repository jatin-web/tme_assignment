import 'package:flutter/material.dart';
import 'package:tme_pune/view/screen/page_not_built.dart';

import '../../../constants.dart';

class QuestContainer extends StatelessWidget {
  const QuestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PageNotBuiltScreen.routeName,
            arguments: "Quest");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            color: fadedThemeColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              "assets/icons/trophy.png",
              height: 70,
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You've unlocked a new Quest",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text("Enter and earn rewards")
                ],
              ),
            ),
            const SizedBox(width: 15),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
