import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/demo_data_list.dart';
import 'package:tme_pune/view/components/buttons/round_border_button.dart';
import 'package:tme_pune/view/components/containers/text_container.dart';

class SaveManuallyScreen extends StatelessWidget {
  static const String routeName = "save_manually_screen";
  const SaveManuallyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        title: const Text("Save Manually"),
        backgroundColor: themeColor,
        shadowColor: Colors.white,
        elevation: 1,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            //------------ Tabs & Fields ----------------
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    _getTabBar(),
                    const SizedBox(height: 20),
                    SizedBox(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TabBarView(
                              children: [_getFirstTab(), _getFirstTab()]),
                        )),
                    _assuranceText(),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          CouponCard(
                            backgroundColor: fadedThemeColor,
                            firstChild: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.workspace_premium,
                                        color: Colors.white38,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "WINNINGS",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Expanded(child: Container()),
                                      const Text("APPLY",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white38))
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Add gold worth ${rupee}10 to get extra gold",
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                            secondChild: Column(
                              children: [
                                DottedBorder(
                                  dashPattern: const [10, 15],
                                  padding: EdgeInsets.zero,
                                  color: Colors.grey,
                                  child: Container(
                                    color: Colors.transparent,
                                    width: double.infinity,
                                    height: 0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "View Details",
                                        style:
                                            TextStyle(color: lightPurpleColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // ----------- Bottom Bar (Next Button) --------
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${rupee}0",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Incl. (GST)",
                        style: TextStyle(color: lightPurpleColor, fontSize: 10),
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Text(
                              "View Breakdown",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.underline),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: RoundBorderButton(
                      onTap: () {},
                      color: buttonColor1,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/gold.png",
                            height: 30,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getTabBar() => Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: fadedThemeColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
        ),
        clipBehavior: Clip.hardEdge,
        child: TabBar(
          indicator: BoxDecoration(
            color: themeColor,
            borderRadius: BorderRadius.circular(10),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(2),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          tabs: const [Text("First"), Text("Second")],
        ),
      );

  Widget _getFirstTab() => Column(
        children: [
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.currency_rupee),
                suffixText: "xyz gm"),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return "Please enter a value";
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ListView.separated(
              itemCount: rupeeSampleList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TextContainer(text: "$rupee${rupeeSampleList[index]}");
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 8);
              },
            ),
          )
        ],
      );

  Widget _assuranceText() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.grey, width: 0.5),
              bottom: BorderSide(color: Colors.grey, width: 0.5)),
        ),
        alignment: Alignment.center,
        child: const Text(
          "Your gold will be stored in 100% safe & secure locker",
          style: TextStyle(color: Colors.amber),
        ),
      );
}
