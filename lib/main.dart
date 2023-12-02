import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/route_navigator.dart';
import 'package:tme_pune/view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: themeColor,
          brightness: Brightness.dark,
        ),
      ),
      onGenerateRoute: RouteNavigator.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
