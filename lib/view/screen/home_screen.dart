import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/view/screen/tabs/accounts_tab.dart';
import 'package:tme_pune/view/screen/tabs/home_tab.dart';
import 'package:tme_pune/view/screen/tabs/transactions_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 2;
  static const List<Widget> _tabs = [
    HomeTab(),
    TransactionsTab(),
    AccountsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
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
      // bottomNavigationBar: NavigationBar(
      //   onDestinationSelected: (int i) {
      //     setState(() {
      //       index = i;
      //     });
      //   },
      //   indicatorColor: Colors.amber,
      //   selectedIndex: index,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(child: Icon(Icons.notifications_sharp)),
      //       label: 'Notifications',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(
      //         label: Text('2'),
      //         child: Icon(Icons.messenger_sharp),
      //       ),
      //       label: 'Messages',
      //     ),
      //   ],
      // ),
      body: _tabs[index],
    );
  }
}
