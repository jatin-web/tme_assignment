import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';

class RecommendationTile extends StatelessWidget {
  const RecommendationTile(
      {super.key,
      required this.imageAddress,
      required this.title,
      required this.subtitle,
      this.showOfferExpiryTag = false});
  final String imageAddress;
  final String title;
  final String subtitle;
  final bool showOfferExpiryTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: fadedThemeColor, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(
          top: 15, left: 15, right: 15, bottom: showOfferExpiryTag ? 0 : 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cashback tile
          Row(
            children: [
              Image.asset(
                imageAddress,
                height: 40,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )),
            ],
          ),

          const SizedBox(height: 15),

          // Offer expires soon tag
          if (showOfferExpiryTag)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text("OFFER EXPIRES SOON")
                  ],
                ),
              ),
            )
         
         
        ],
      ),
    );
  }
}
