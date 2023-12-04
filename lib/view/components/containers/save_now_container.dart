import 'package:flutter/material.dart';
import 'package:tme_pune/view/screen/save_manually/save_manually_screen.dart';

import '../../../constants.dart';

class SaveNowContainer extends StatelessWidget {
  const SaveNowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: fadedThemeColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          // Data
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Rs 100",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.info_outline,
                      color: Colors.white.withOpacity(0.7),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Start your savings in gold with as low as ${rupee}10",
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),

          const SizedBox(width: 10),

          // Button
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SaveManuallyScreen.routeName);
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStatePropertyAll(buttonColor1)),
              child: const Text(
                "Save Now",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
