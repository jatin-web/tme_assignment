import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/demo_data_list.dart';
import 'package:tme_pune/view/components/buttons/logout_button.dart';
import 'package:tme_pune/view/components/containers/reward_container.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: themeColor,
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _getHeader(),
                Expanded(child: _getOptions()),
                _getLogoutButtonRow(),
                const SizedBox(height: 5),
                const Divider(color: Colors.grey),
                _getFooter(),
              ],
            )),
      ),
    );
  }

  Widget _getFooter() => const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Made with ❤️ in India",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      );

  Widget _getLogoutButtonRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LogoutButton(
            title: "Logout",
            color: Colors.white.withOpacity(0.15),
            icon: Icons.logout,
          ),
          const Text(
            "6.7.4(464)",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      );

  Widget _getOptions() => GridView.builder(
      itemCount: rewardsList.length,
      padding: const EdgeInsets.only(top: 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return RewardContainer(
          rewardModel: rewardsList[index],
          isOutlined: true,
        );
      });

  Widget _getHeader() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "JATIN SAINI",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("View Profile"))
                ],
              ),
              CircleAvatar(
                radius: 37,
                backgroundColor: fadedThemeColor,
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: themeColor,
                  child: const Text("JS"),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
                color: Colors.brown.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5)),
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/offers.png",
                  height: 15,
                ),
                const Text(
                  "10+ winnings expiring on 26th Feb",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          )
        ],
      );
}
