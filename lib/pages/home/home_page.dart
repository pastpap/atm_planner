import 'package:atm_planner/bloc/flight_list_bloc.dart';
import 'package:atm_planner/colors.dart';
import 'package:atm_planner/pages/collab/collab_list.dart';
import 'package:atm_planner/pages/flights/flight_list_page.dart';
import 'package:atm_planner/pages/flights/improved_flight_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AtmPlannerHomePage extends StatefulWidget {
  final String title;

  AtmPlannerHomePage({Key key, this.title}) : super(key: key);

  _AtmPlannerHomePageState createState() => _AtmPlannerHomePageState();
}

class _AtmPlannerHomePageState extends State<AtmPlannerHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FlightListPage(
      title: "Focus Flights",
    ),
    ImprovedFlightListPage(
      title: "Improved Flights",
    ),
    CollaborationListPage(
      title: "Collaborations",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final FlightListBloc _flightListBloc =
        BlocProvider.of<FlightListBloc>(context);
    return BlocProviderTree(
      blocProviders: [
        BlocProvider<FlightListBloc>(
          bloc: _flightListBloc,
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.flight,
                color: red_text,
              ),
              icon: Icon(
                Icons.flight,
                color: theme_dark_background,
              ),
              title: Text(
                "Focus Flighs",
                style: TextStyle(
                  color: theme_dark_background,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.flight_takeoff,
                color: red_text,
              ),
              icon: Icon(
                Icons.flight_takeoff,
                color: theme_dark_background,
              ),
              title: Text(
                "Improved Flighs",
                style: TextStyle(
                  color: theme_dark_background,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.chat,
                color: red_text,
              ),
              icon: Icon(
                Icons.chat,
                color: theme_dark_background,
              ),
              title: Text(
                "Collabs",
                style: TextStyle(
                  color: theme_dark_background,
                ),
              ),
            )
          ],
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
        ),
        body: _children[_currentIndex],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
