import 'package:atm_planner/pages/home/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:atm_planner/utils/themes.dart';

void main() => runApp(ATMPlanner());

class ATMPlanner extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ATM Planner',
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? Themes.kIOSTheme
          : Themes.kDefaultTheme,
      home: AtmPlannerHomePage(title: 'ATM Planner'),
    );
  }
}
