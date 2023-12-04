import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/models/quick_action_model.dart';

class QucikActionContainer extends StatelessWidget {
  const QucikActionContainer(
      {super.key, required this.quickActionModel, this.maxLines = 2});
  final ExploreOptionModel quickActionModel;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: fadedThemeColor, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(15),
      child: Stack(
        children: [
          // Data
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (quickActionModel.imagePath != null)
                Image.asset(
                  quickActionModel.imagePath!,
                  height: 45,
                ),
              const SizedBox(height: 15),
              Text(
                quickActionModel.title ?? "",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                quickActionModel.description ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: maxLines,
                style: TextStyle(color: lightPurpleColor),
              ),
            ],
          ),

          // Forward arrow button
          const Positioned(
              top: 0,
              right: 0,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
