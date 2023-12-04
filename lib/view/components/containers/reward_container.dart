import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/models/reward_model.dart';

class RewardContainer extends StatelessWidget {
  const RewardContainer(
      {super.key, required this.rewardModel, this.isOutlined = false});
  final RewardModel rewardModel;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: isOutlined ? themeColor : fadedThemeColor,
          borderRadius: BorderRadius.circular(10),
          border:
              isOutlined ? Border.all(color: fadedThemeColor, width: 2) : null),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (rewardModel.imagePath != null)
            Image.asset(
              rewardModel.imagePath!,
              height: 35,
            ),
          const SizedBox(height: 15),
          Text(
            rewardModel.title ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: isOutlined ? lightPurpleColor : Colors.white,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
