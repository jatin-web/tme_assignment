import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tme_pune/constants.dart';

class PageNotBuiltScreen extends StatelessWidget {
  static const String routeName = "page_not_built_screen";
  const PageNotBuiltScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themeColor,
        appBar: AppBar(
          backgroundColor: themeColor,
          elevation: 1,
          shadowColor: Colors.white,
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/page_not_found.json"),
          ],
        ));
  }
}
