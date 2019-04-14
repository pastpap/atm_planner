import 'dart:async';

import 'package:atm_planner/bloc/flight_list_events.dart';
import 'package:atm_planner/bloc/flight_list_state.dart';
import 'package:atm_planner/model/flight/factory/FlightFactory.dart';
import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:bloc/bloc.dart';

class FlightListBloc extends Bloc<FlightListEvent, FlightListState> {
  void onAddFlights() {
    dispatch(AddFlights());
  }

  @override
  FlightListState get initialState => FlightListState.initial();

  @override
  Stream<FlightListState> mapEventToState(FlightListEvent event) async* {
    if (event is AddFlights) {
      List<Flight> updatedList = currentState.flightList;
      updatedList.addAll(FlightFactory.generateNewFlights(10));
      yield FlightListState.newStateBasedOnList(
          updatedList, currentState.selectedFlightIds);
    } else if (event is AddFlightToSelected) {
      List<String> updatedSelectedIds = currentState.selectedFlightIds;
    } else if (event is RemoveFlightFromSelected) {}
  }
}
