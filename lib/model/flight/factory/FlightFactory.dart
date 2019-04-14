import 'dart:math';

import 'package:atm_planner/model/flight/flight_model.dart';
import 'package:atm_planner/model/regulations/regulation_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:intl/intl.dart';
import 'package:random_string/random_string.dart';

class FlightFactory {
  static Flight generateFlight() {
    var doubleDigits = new NumberFormat("00", "en_US");

    var rang = new Random();
    var result = new Flight((b) => b
      ..actDla = rang.nextInt(200)
      ..adep = randomAlpha(4).toUpperCase()
      ..ades = randomAlpha(4).toUpperCase()
      ..aircraftType = randomAlphaNumeric(5).toUpperCase()
      ..arcID =
          randomAlpha(3).toUpperCase() + randomAlphaNumeric(4).toUpperCase()
      ..aircraftType = randomAlphaNumeric(4).toUpperCase()
      ..regDla = rang.nextInt(200)
      ..eobt = doubleDigits.format(randomBetween(0, 24)) +
          ':' +
          doubleDigits.format(randomBetween(0, 59))
      ..taxiTime = doubleDigits.format(randomBetween(0, 24)) +
          ':' +
          doubleDigits.format(randomBetween(0, 59))
      ..estimatedTakeOffTime = doubleDigits.format(randomBetween(0, 24)) +
          ':' +
          doubleDigits.format(randomBetween(0, 59))
      ..calculatedTakeOffTime = doubleDigits.format(randomBetween(0, 24)) +
          ':' +
          doubleDigits.format(randomBetween(0, 59))
      ..ready = rang.nextBool()
      ..lateFiller = rang.nextBool()
      ..lateUpdater = rang.nextBool()
      ..operatingAircraftOperator = randomAlpha(3).toUpperCase()
      ..cdmStatus = 'SLOT RDY'
      ..cdmAOTargetTakeOffTime = doubleDigits.format(randomBetween(0, 24)) +
          ':' +
          doubleDigits.format(randomBetween(0, 59))
      ..isChecked = true
      ..isPriority = rang.nextBool()
      ..initialEobt = doubleDigits.format(randomBetween(0, 24)) +
          ':' +
          doubleDigits.format(randomBetween(0, 59))
      ..ifplid = randomAlphaNumeric(7).toUpperCase()
      ..flightState = 'TRANZIT'
      ..regulations = generateRegulationList()
      ..actionHistory = generateActionHistory()
      ..collaborationHistory = generateCollaborationHistory());

    return result;
  }

  static ListBuilder<FlightRegulationLocation> generateRegulationList() {
    ListBuilder<FlightRegulationLocation> result = new ListBuilder();
    var rang = new Random();

    for (var i = 0; i < randomBetween(0, 4); i++) {
      result.add(new FlightRegulationLocation((b) => b
        ..regulationId = randomAlpha(5).toUpperCase()
        ..referenceLocationType = randomAlpha(5).toUpperCase()
        ..referenceLocationId = randomAlpha(3).toUpperCase()
        ..toConfirm = rang.nextBool()));
    }
    return result;
  }

  static ListBuilder<CollaborationListElement> generateCollaborationHistory() {
    return null;
  }

  static ListBuilder<FlightActionListElement> generateActionHistory() {
    return null;
  }

  static List<Flight> generateNewFlights(int numberOfFlights) {
    List<Flight> result = new List();
    for (var i = 0; i < numberOfFlights; i++) {
      result.add(FlightFactory.generateFlight());
    }
    return result;
  }
}
