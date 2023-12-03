import 'package:flutter/material.dart';
import 'package:tme_pune/view/screen/home_screen.dart';
import 'package:tme_pune/view/screen/save_manually/save_manually_screen.dart';
import 'package:tme_pune/view/screen/story_screen.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case StoryScreen.routeName:
        return MaterialPageRoute(builder: (context) => const StoryScreen());
      case SaveManuallyScreen.routeName:
        return MaterialPageRoute(builder: (context) => const SaveManuallyScreen());

      default:
        return MaterialPageRoute(
            builder: (context) =>
                const Scaffold(body: Center(child: Text("Error route"))));
    }
  }
}
