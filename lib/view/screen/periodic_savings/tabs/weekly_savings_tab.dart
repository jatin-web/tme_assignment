import 'package:flutter/material.dart';

class WeeklySavingsTab extends StatefulWidget {
  const WeeklySavingsTab({super.key});

  @override
  State<WeeklySavingsTab> createState() => _WeeklySavingsTabState();
}

class _WeeklySavingsTabState extends State<WeeklySavingsTab> {
  double amount = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Text("How much would you like to save weekly?",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        SliderTheme(
          data: const SliderThemeData(
            trackHeight: 10,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            activeTickMarkColor: Colors.red,
            inactiveTickMarkColor: Colors.blue,
            overlayColor: Colors.green,
            valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          ),
          child: Slider(
            value: amount,
            onChanged: (v) => setState(() {
              amount = v;
            }),
          ),
        ),
      ],
    );
  }
}
