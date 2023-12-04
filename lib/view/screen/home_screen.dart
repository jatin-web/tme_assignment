import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/drawer/my_drawer.dart';
import 'package:tme_pune/view/screen/save_manually/save_manually_screen.dart';
import 'package:tme_pune/view/screen/tabs/accounts_tab.dart';
import 'package:tme_pune/view/screen/tabs/home_tab.dart';
import 'package:tme_pune/view/screen/tabs/transactions_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  static const List<Widget> _tabs = [
    HomeTab(),
    TransactionsTab(),
    AccountsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      drawer: const MyDrawer(),
      floatingActionButton: _getSaveManuallyButton(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.2))),
        child: BottomNavigationBar(
            currentIndex: index,
            elevation: 5,
            backgroundColor: themeColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade300,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (v) {
              setState(() {
                index = v;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Transactions",
                  activeIcon: Icon(Icons.receipt),
                  icon: Icon(Icons.receipt_outlined)),
              BottomNavigationBarItem(
                  label: "Account",
                  activeIcon: Icon(Icons.person),
                  icon: Icon(Icons.person_outline)),
            ]),
      ),
      body: _tabs[index],
    );
  }

  _getSaveManuallyButton() => InkWell(
        onTap: () {
          Navigator.pushNamed(context, SaveManuallyScreen.routeName);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 74, 15, 235),
                Color.fromARGB(255, 210, 57, 237)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icons/gold.png",
                height: 30,
              ),
              const SizedBox(width: 10),
              const Text(
                "Save Manually",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
        ),
      );
}
