import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/buttons/round_border_button.dart';
import 'package:tme_pune/view/components/containers/overlap_profile_pic_container.dart';

import '../../../data/demo_data_list.dart';
import '../../components/containers/text_container.dart';

class DailySavingScreen extends StatefulWidget {
  static const String routeName = "daily_saving_screen";
  const DailySavingScreen({super.key});

  @override
  State<DailySavingScreen> createState() => _DailySavingScreenState();
}

class _DailySavingScreenState extends State<DailySavingScreen> {
  final _rsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        backgroundColor: themeColor,
        elevation: 1,
        shadowColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/icons/salary.png",
              height: 25,
            ),
            const SizedBox(width: 15),
            const Text("Daily Savings"),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeader(),
                  _buildAmountFieldContainer(),
                ],
              ),
            ),
          ),
          Container(
            color: fadedThemeColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/phonePe.png",
                            height: 30,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "PAY USING",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                          ),
                          const Icon(Icons.keyboard_arrow_up_outlined)
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "PhonePe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: RoundBorderButton(
                      color: buttonColor1,
                      onTap: () {},
                      height: 55,
                      child: const Text(
                        "Proceed",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildHeader() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "Reach your goal",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "3x faster by\nsaving daily",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffFF3FA4),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "3x",
                    style: TextStyle(fontSize: 60, color: Colors.amber),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/gold.png",
                  height: 20,
                ),
                const Text(
                  "Your money is saved in 24K gold",
                  style: TextStyle(color: Colors.amber),
                ),
              ],
            ),
            Divider(
              thickness: 10,
              height: 30,
              color: Colors.black.withOpacity(0.2),
            )
          ],
        ),
      );

  _buildAmountFieldContainer() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter amount you want to save daily",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _rsController,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(
                  Icons.currency_rupee,
                  color: Colors.white,
                ),
              ),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Please enter a value";
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                OverlapProfilePicContainer(),
                RichText(
                    text: TextSpan(children: [
                  const TextSpan(text: "7 Lakh Indians save "),
                  TextSpan(
                      text: "${rupee}30",
                      style: const TextStyle(color: Colors.yellow)),
                  const TextSpan(text: " daily on Jar")
                ]))
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ListView.separated(
                itemCount: rupeeSampleList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _rsController.text = rupeeSampleList[index].toString();
                      });
                    },
                    child: TextContainer(
                      text: "$rupee${rupeeSampleList[index]}",
                      isSelected: _rsController.text ==
                          rupeeSampleList[index].toString(),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 8);
                },
              ),
            )
          ],
        ),
      );
}
