import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';

class LiveGoldPriceIconContainer extends StatelessWidget {
  const LiveGoldPriceIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.sensors,
                color: Colors.red,
                size: 15,
              ),
              SizedBox(height: 4),
              Text(
                "Live",
                style: TextStyle(color: Colors.red, fontSize: 10),
              )
            ],
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Live Gold Price",
                style: TextStyle(color: lightPurpleColor, fontSize: 12),
              ),
              const SizedBox(height: 4),
              const Text(
                "₹6221/gm",
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
