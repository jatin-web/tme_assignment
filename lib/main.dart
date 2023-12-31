import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tme_pune/constants.dart';
import 'package:tme_pune/data/provider/gold_price_provider.dart';
import 'package:tme_pune/route_navigator.dart';
import 'package:tme_pune/view/screen/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.light, //navigation bar icons' color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoldPriceProvider(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: themeColor,
            brightness: Brightness.dark,
          ),
        ),
        onGenerateRoute: RouteNavigator.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
