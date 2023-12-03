import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/buttons/round_border_button.dart';
import 'package:tme_pune/view/screen/save_manually/save_manually_screen.dart';

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
              RoundBorderButton(
                onTap: () {
                  Navigator.pushNamed(context, SaveManuallyScreen.routeName);
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Start Today",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
