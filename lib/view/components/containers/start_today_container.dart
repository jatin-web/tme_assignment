import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/buttons/round_border_button.dart';

class StartTodayContainer extends StatelessWidget {
  const StartTodayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.teal.shade300,
      width: double.infinity,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HI JATIN",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: themeColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  "0.0000 gm",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: themeColor),
                ),
              ),
              Text(
                "Start filling your gold locker",
                style: TextStyle(fontSize: 16, color: themeColor),
              ),
              const SizedBox(height: 20),
              const RoundBorderButton(
                title: "Start Today",
                icon: Icons.arrow_forward,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
