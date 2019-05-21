import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FlightListEvent {
  FlightListEvent([List props = const []]) : super();
}

class AddFlights extends FlightListEvent {}

class AddFlightToImproved extends FlightListEvent {
  final Flight flight;
  AddFlightToImproved(this.flight) : super([flight]);
  @override
  String toString() => 'AddFlightToImproved { flightId: $flight }';
}

class RemoveFlightFromImproved extends FlightListEvent {
  final Flight flight;
  RemoveFlightFromImproved(this.flight) : super([flight]);
  @override
  String toString() => 'RemoveFlightToImproved { flightId: $flight }';
}

class AddFlightToSelected extends FlightListEvent {
  final String flightId;
  AddFlightToSelected(this.flightId) : super([flightId]);
  @override
  String toString() => 'AddFlightToSelected { flightId: $flightId }';
}

class RemoveFlightFromSelected extends FlightListEvent {
  final String flightId;
  RemoveFlightFromSelected(this.flightId) : super([flightId]);
  @override
  String toString() => 'RemoveFlightFromSelected { flightId: $flightId }';
}
