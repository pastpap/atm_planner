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

  void onAddFlightToImproved(Flight flight) {
    dispatch(AddFlightToImproved(flight));
  }

  void onRemoveFlightFromImproved(Flight flight) {
    dispatch(RemoveFlightFromImproved(flight));
  }

  void onActivate(String flightId) {
    dispatch(AddFlightToSelected(flightId));
  }

  void onDeactivate(String flightId) {
    dispatch(RemoveFlightFromSelected(flightId));
  }

  @override
  FlightListState get initialState => FlightListState.initial();

  @override
  Stream<FlightListState> mapEventToState(FlightListEvent event) async* {
    if (event is AddFlights) {
      List<Flight> updatedList = currentState.flightList;
      updatedList.addAll(FlightFactory.generateNewFlights(10));
      yield FlightListState.newStateBasedOnList(updatedList,
          currentState.improvedFlights, currentState.selectedFlightIds);
    } else if (event is AddFlightToSelected) {
      List<String> updatedSelectedIds = currentState.selectedFlightIds;
      updatedSelectedIds.add(event.flightId);
      yield FlightListState.newStateBasedOnList(currentState.flightList,
          currentState.improvedFlights, updatedSelectedIds);
    } else if (event is RemoveFlightFromSelected) {
      List<String> updatedSelectedIds = currentState.selectedFlightIds;
      updatedSelectedIds.remove(event.flightId);
      yield FlightListState.newStateBasedOnList(currentState.flightList,
          currentState.improvedFlights, updatedSelectedIds);
    } else if (event is AddFlightToImproved) {
      List<Flight> updatedImprovedFlightList = currentState.improvedFlights;
      List<Flight> updatedFlightList = currentState.flightList;
      updatedImprovedFlightList.add(event.flight);
      updatedFlightList.remove(event.flight);
      yield FlightListState.newStateBasedOnList(updatedFlightList,
          updatedImprovedFlightList, currentState.selectedFlightIds);
    } else if (event is RemoveFlightFromImproved) {
      List<Flight> updatedImprovedFlightList = currentState.improvedFlights;
      updatedImprovedFlightList.remove(event.flight);
      List<Flight> updatedFlightList = currentState.flightList;
      updatedFlightList.add(event.flight);
      yield FlightListState.newStateBasedOnList(updatedFlightList,
          updatedImprovedFlightList, currentState.selectedFlightIds);
    }
  }
}
