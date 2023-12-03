import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/components/drawer/my_drawer.dart';
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
    AccountsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      drawer: const MyDrawer(),
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
}
