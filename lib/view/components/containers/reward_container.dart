import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/models/reward_model.dart';

class RewardContainer extends StatelessWidget {
  const RewardContainer({super.key, required this.rewardModel});
  final RewardModel rewardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: fadedThemeColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (rewardModel.imagePath != null)
            Image.asset(
              rewardModel.imagePath!,
              height: 40,
            ),
          const SizedBox(height: 15),
          Text(
            rewardModel.title ?? "",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
