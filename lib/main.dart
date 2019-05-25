import 'package:atm_planner/bloc/flight_list_bloc.dart';
import 'package:atm_planner/pages/home/home_page.dart';
import 'package:atm_planner/pages/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:atm_planner/utils/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(ATMPlanner());

class ATMPlanner extends StatelessWidget {
  final _flightListBloc = FlightListBloc();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: [
        BlocProvider<FlightListBloc>(
          bloc: _flightListBloc,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ATM Planner',
        theme: defaultTargetPlatform == TargetPlatform.iOS
            ? Themes.kIOSTheme
            : Themes.kDefaultTheme,
        home: Login(),
      ),
    );
  }
}
