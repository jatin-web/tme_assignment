import 'package:flutter/material.dart';
import 'package:tme_pune/view/screen/home_screen.dart';
import 'package:tme_pune/view/screen/page_not_built.dart';
import 'package:tme_pune/view/screen/periodic_savings/daily_savings_screen.dart';
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
        return MaterialPageRoute(
            builder: (context) => const SaveManuallyScreen());
      case DailySavingScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const DailySavingScreen());

      case PageNotBuiltScreen.routeName:
        String title = args == null ? "" : args as String;
        return MaterialPageRoute(
            builder: (context) => PageNotBuiltScreen(title: title));

      default:
        return MaterialPageRoute(
            builder: (context) => PageNotBuiltScreen(title: args as String));
    }
  }
}
