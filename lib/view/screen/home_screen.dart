import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/demo_data_list.dart';
import 'package:tme_pune/view/components/buttons/status_button.dart';
import 'package:tme_pune/view/components/containers/live_gold_price_icon_container.dart';
import 'package:tme_pune/view/components/containers/quick_action_container.dart';
import 'package:tme_pune/view/components/containers/reward_container.dart';
import 'package:tme_pune/view/components/containers/save_now_container.dart';
import 'package:tme_pune/view/components/containers/start_today_container.dart';
import 'package:tme_pune/view/components/tiles/recommendations_tile.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double horizontalPadding = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      body: CustomScrollView(
        slivers: [
          _getAppBar(),
          const SliverToBoxAdapter(
            child: StartTodayContainer(),
          ),

          // ------------ Recommended for you -------------
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  getTitle("Recommended for you"),
                  const RecommendationTile(
                    imageAddress: "assets/icons/money.png",
                    title: "Cashback just for you",
                    subtitle: "Get upto Rs10 assured winnings today",
                    showOfferExpiryTag: true,
                  ),
                  getGap(),
                  const RecommendationTile(
                    imageAddress: "assets/icons/salary.png",
                    title: "Save in Gold daily!",
                    subtitle:
                        "Automatically save in 24k gold everyday, start with Rs.10/day",
                    showOfferExpiryTag: false,
                  ),
                ],
              ),
            ),
          ),

          getSliverGap(height: 10),

          // ---------- Start your savings journey ----------
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitle("Start your savings journey"),
                  const SaveNowContainer()
                ],
              ),
            ),
          ),

          getSliverGap(height: 10),

          // -------------- Quick Actions ----------------
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitle("Quick Actions"),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: quickActionsList.length,
                      itemBuilder: (context, index) {
                        return QucikActionContainer(
                            quickActionModel: quickActionsList[index]);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 15);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          getSliverGap(height: 10),

          // -------------- Rewards and more ----------------
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitle("Rewards and more"),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 120,
                            childAspectRatio: 1,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12),
                    itemCount: rewardsList.length,
                    itemBuilder: (context, index) {
                      return RewardContainer(
                        rewardModel: rewardsList[index],
                      );
                    },
                  )
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 100),
          )
        ],
      ),
    );
  }

  SliverAppBar _getAppBar() => SliverAppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: LiveGoldPriceIconContainer(),
          ),
          SizedBox(width: 20),
          StatusButton(),
          SizedBox(width: 20),
        ],
      );

  Widget getGap({double height = 30}) {
    return SizedBox(height: height);
  }

  Widget getSliverGap({double height = 30}) {
    return SliverToBoxAdapter(child: SizedBox(height: height));
  }

  Widget getTitle(String title) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
