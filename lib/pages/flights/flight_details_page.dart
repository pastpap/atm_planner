import 'package:atm_planner/bloc/flight_list_bloc.dart';
import 'package:atm_planner/model/regulations/regulation_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:atm_planner/colors.dart';
import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FlightDetails extends StatefulWidget {
  FlightDetails({this.flight});

  final Flight flight;

  @override
  FlightDetailsState createState() {
    return new FlightDetailsState();
  }
}

class FlightDetailsState extends State<FlightDetails> {
  final tripleDigits = new NumberFormat("000", "en_US");
  Choice _selectedChoice = choices[0]; // promotion "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    final FlightListBloc _flightListBloc =
        BlocProvider.of<FlightListBloc>(context);
    var isDemotable =
        _flightListBloc.currentState.improvedFlights.contains(widget.flight);

    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: (Choice result) {
              if (result.title == 'Promote') {
                _flightListBloc.onAddFlightToImproved(widget.flight);
              } else {
                _flightListBloc.onRemoveFlightFromImproved(widget.flight);
              }
              setState(() {});
            },
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  enabled:
                      choice.title == 'Promote' ? !isDemotable : isDemotable,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(choice.title),
                      Icon(choice.icon),
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ],
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                widget.flight.arcID,
                style: bold_light_30,
              ),
              Text(
                widget.flight.isPriority ? 'PRIO' : '',
                style: bold_red_30,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        //padding: EdgeInsets.all(16),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "iEOBT",
                          style: bold_dark_20,
                        ),
                        Text(
                          "EOBT",
                          style: bold_dark_20,
                        ),
                        Text(
                          "REA(I/D)",
                          style: bold_dark_20,
                        ),
                        Text(
                          "TAXI",
                          style: bold_dark_20,
                        ),
                        Text(
                          "ETOT",
                          style: bold_dark_20,
                        ),
                        Text(
                          "CTOT",
                          style: bold_dark_20,
                        ),
                        Text(
                          "ACT DLA",
                          style: bold_dark_20,
                        ),
                        Text(
                          "REG DLA",
                          style: bold_dark_20,
                        ),
                        Text(
                          "LF",
                          style: bold_dark_20,
                        ),
                        Text(
                          "LU",
                          style: bold_dark_20,
                        ),
                        Text(
                          "OP",
                          style: bold_dark_20,
                        ),
                        Text(
                          "CMD STAT",
                          style: bold_dark_20,
                        ),
                        Text(
                          "TTOT",
                          style: bold_dark_20,
                        ),
                        Text(
                          "IFPLID",
                          style: bold_dark_20,
                        ),
                        Text(
                          "STATE",
                          style: bold_dark_20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 0),
                          child: Text(
                            "REGS",
                            style: bold_dark_20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          widget.flight.initialEobt,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.eobt,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.ready ? 'Y' : 'N',
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.taxiTime,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.estimatedTakeOffTime,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.calculatedTakeOffTime,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.actDla.toString(),
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.regDla.toString(),
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.lateFiller ? 'Y' : 'N',
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.lateUpdater ? 'Y' : 'N',
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.operatingAircraftOperator,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.cdmStatus,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.cdmAOTargetTakeOffTime,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.ifplid,
                          style: bold_dark_20,
                        ),
                        Text(
                          widget.flight.flightState,
                          style: bold_dark_20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              getListOfRequlations(widget.flight.regulations),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                child: Container(
                  child: Text(
                    "Free Collaborations",
                    style: bold_dark_30,
                  ),
                ),
              ),
              Divider(
                color: theme_dark_background,
              ),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 220,
                      child: CollaborationCard(
                        flightName: widget.flight.arcID,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 220,
                      child: CollaborationCard(
                        flightName: widget.flight.arcID,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 220,
                      child: CollaborationCard(
                        flightName: widget.flight.arcID,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
                child: Container(
                  child: Text(
                    "History",
                    style: bold_dark_30,
                  ),
                ),
              ),
              Divider(
                color: theme_dark_background,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 270,
                      child: HistoryCard(
                        isError: true,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 270,
                      child: HistoryCard(
                        isError: false,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 270,
                      child: HistoryCard(
                        isError: false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getListOfRequlations(BuiltList<FlightRegulationLocation> regulations) {
    List<Widget> result = new List();
    for (var reg in regulations) {
      result.add(new Text(
        reg.regulationId,
        style: bold_dark_20,
      ));
    }
    return result;
  }
}

class CollaborationCard extends StatelessWidget {
  final String flightName;

  const CollaborationCard({Key key, this.flightName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          "Flight assist: " + flightName,
          style: bold_dark_15,
        ),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "From",
                  style: bold_dark_15,
                ),
                Text(
                  "To ",
                  style: bold_dark_15,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "MUAC FMP",
                  style: bold_dark_15,
                ),
                Text(
                  "MUAC Backoffice...",
                  style: bold_dark_15,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class HistoryCard extends StatelessWidget {
  final bool isError;

  const HistoryCard({Key key, this.isError}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "EXCLUDE [HOTLINE] ",
              style: bold_dark_15,
            ),
            Text(
              isError ? "ERROR" : "SUBMITTED",
              style: isError ? bold_red_15 : bold_dark_15,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: Divider(
            color: theme_dark_background,
          ),
        ),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "[KWUR2224, YFFM1234C]",
                  style: bold_dark_15,
                ),
                Text(
                  "MUAC FMP",
                  style: bold_dark_15,
                ),
                Text(
                  "24-03-19 14:58",
                  style: bold_dark_15,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Promote', icon: Icons.trending_up),
  const Choice(title: 'Demote', icon: Icons.trending_down),
];
