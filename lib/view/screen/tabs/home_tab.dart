import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/buttons/status_button.dart';
import 'package:tme_pune/view/components/containers/live_gold_price_icon_container.dart';
import 'package:tme_pune/view/components/containers/quest_container.dart';
import 'package:tme_pune/view/screen/page_not_built.dart';
import 'package:tme_pune/view/screen/periodic_savings/daily_savings_screen.dart';
import 'package:tme_pune/view/screen/save_manually/save_manually_screen.dart';

import '../../../data/demo_data_list.dart';
import '../../components/containers/quick_action_container.dart';
import '../../components/containers/reward_container.dart';
import '../../components/containers/save_now_container.dart';
import '../../components/containers/start_today_container.dart';
import '../../components/tiles/recommendations_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final double horizontalPadding = 15;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
                RecommendationTile(
                  imageAddress: "assets/icons/money.png",
                  title: "Cashback just for you",
                  subtitle: "Get upto Rs10 assured winnings today",
                  showOfferExpiryTag: true,
                  onTap: () {
                    Navigator.pushNamed(context, SaveManuallyScreen.routeName);
                  },
                ),
                getGap(),
                RecommendationTile(
                  imageAddress: "assets/icons/salary.png",
                  title: "Save in Gold daily!",
                  subtitle:
                      "Automatically save in 24k gold everyday, start with Rs.10/day",
                  showOfferExpiryTag: false,
                  onTap: () {
                    Navigator.pushNamed(context, DailySavingScreen.routeName);
                  },
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
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PageNotBuiltScreen.routeName,
                              arguments: quickActionsList[index].title);
                        },
                        child: QucikActionContainer(
                            quickActionModel: quickActionsList[index]),
                      );
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
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 160,
                      childAspectRatio: 1,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12),
                  itemCount: rewardsList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, PageNotBuiltScreen.routeName,
                            arguments: rewardsList[index].title);
                      },
                      child: RewardContainer(
                        rewardModel: rewardsList[index],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),

        getSliverGap(height: 10),

        // --------------- Quest ---------------
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [getTitle("Quest"), const QuestContainer()],
            ),
          ),
        ),

        getSliverGap(height: 10),

        // --------------- Explore More ---------------
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getTitle("Explore More"),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: exploreMoreLIst.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PageNotBuiltScreen.routeName,
                              arguments: exploreMoreLIst[index].title);
                        },
                        child: QucikActionContainer(
                            quickActionModel: exploreMoreLIst[index]),
                      );
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

        const SliverToBoxAdapter(
          child: SizedBox(height: 100),
        )
      ],
    );
  }

  SliverAppBar _getAppBar() => SliverAppBar(
        toolbarHeight: 65,
        floating: true,
        backgroundColor: themeColor,
        leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                const LiveGoldPriceIconContainer(),
                Shimmer.fromColors(
                    baseColor: Colors.transparent,
                    highlightColor: Colors.white,
                    child: const LiveGoldPriceIconContainer()),
              ],
            ),
          ),
          const SizedBox(width: 20),
          const StatusButton(),
          const SizedBox(width: 20),
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
