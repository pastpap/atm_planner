import 'package:atm_planner/model/flight/factory/FlightFactory.dart';
import 'package:atm_planner/model/flight/flight_model.dart';

class FlightListState {
  List<Flight> flightList;
  List<String> selectedFlightIds;

  FlightListState._();

  factory FlightListState.initial() {
    return FlightListState._()
      ..flightList = FlightFactory.generateNewFlights(10)
      ..selectedFlightIds = new List();
  }
  factory FlightListState.newStateBasedOnList(
      List<Flight> currentList, List<String> currentSelection) {
    return FlightListState._()
      ..flightList = currentList
      ..selectedFlightIds = currentSelection;
  }
}
