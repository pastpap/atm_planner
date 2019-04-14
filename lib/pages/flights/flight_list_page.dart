import 'package:atm_planner/bloc/flight_list_bloc.dart';
import 'package:atm_planner/bloc/flight_list_state.dart';
import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:atm_planner/pages/flights/flight_details_page.dart';
import 'package:atm_planner/pages/flights/flight_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlightListPage extends StatefulWidget {
  FlightListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FlightListPageState createState() => _FlightListPageState();
}

class _FlightListPageState extends State<FlightListPage> {
  @override
  Widget build(BuildContext context) {
    final FlightListBloc _flightListBloc =
        BlocProvider.of<FlightListBloc>(context);
    List<Flight> flights = _flightListBloc.currentState.flightList;

    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          child: BlocBuilder(
              bloc: _flightListBloc,
              builder: (BuildContext context, FlightListState flightListState) {
                return ListView.builder(
                  itemCount: flights.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int i) {
                    // If you've reached the end of the available flights
                    if (flights.length - i <= 1) {
                      _flightListBloc.onAddFlights();
                    }
                    return ListTile(
                      title: FlightCard(
                        flight: flights[i],
                      ),
                      onTap: () => _showDetails(flights[i]),
                    );
                  },
                );
              }),
        ),
      ],
    );
  }

  void _showDetails(Flight flight) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return FlightDetails(
            flight: flight,
          );
        },
      ),
    );
  }
}
