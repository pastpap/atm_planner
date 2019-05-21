import 'package:atm_planner/model/flight/factory/FlightFactory.dart';
import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:atm_planner/model/user/user.dart';

class FlightListState {
  List<Flight> flightList;
  List<Flight> improvedFlights;
  List<String> selectedFlightIds;
  var currentUser = User(userName: 'User1');

  FlightListState._();

  factory FlightListState.initial() {
    return FlightListState._()
      ..flightList = FlightFactory.generateNewFlights(10)
      ..improvedFlights = new List()
      ..selectedFlightIds = new List();
  }
  factory FlightListState.newStateBasedOnList(List<Flight> currentList,
      List<Flight> currentImprovedFights, List<String> currentSelection) {
    return FlightListState._()
      ..flightList = currentList
      ..improvedFlights = currentImprovedFights
      ..selectedFlightIds = currentSelection;
  }
}
