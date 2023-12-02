import 'package:flutter/material.dart';
import 'package:tme_pune/view/screen/home_screen.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (context) =>
                const Scaffold(body: Center(child: Text("Error route"))));
    }
  }
}
