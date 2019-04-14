import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:atm_planner/model/regulations/regulation_model.dart';

part 'flight_model.g.dart';

abstract class Flight implements Built<Flight, FlightBuilder> {
  @nullable
  String get ifplid;
  @nullable
  String get arcID;
  @nullable
  String get adep;
  @nullable
  String get ades;
  @nullable
  String get eobt;
  @nullable
  String get eobd;
  @nullable
  String get initialEobt;
  @nullable
  String get calculatedTakeOffTime;
  @nullable
  String get referenceCTOT;
  @nullable
  String get estimatedTakeOffTime;
  @nullable
  BuiltList<FlightRegulationLocation> get regulations;
  @nullable
  String get mostPenalizingRegulation;
  @nullable
  String get readyTime;
  @nullable
  bool get ready;
  @nullable
  int get actDla;
  @nullable
  int get regDla;
  @nullable
  String get taxiTime;
  @nullable
  String get aircraftType;
  @nullable
  bool get lateFiller;
  @nullable
  bool get lateUpdater;
  @nullable
  String get operator;
  @nullable
  String get operatingAircraftOperator;
  @nullable
  bool get isChecked;
  @nullable
  bool get isPriority;
  @nullable
  bool get isAddedToFlightImprovement;
  @nullable
  bool get isDemoteable;
  @nullable
  bool get isExcludedFromRegulation;
  @nullable
  bool get isForceCTOT;
  @nullable
  bool get isExemptedFromRAD;
  @nullable
  bool get isPreAgreed;
  @nullable
  BuiltList<int> get prioCollaborations;
  @nullable
  BuiltList<int> get radCollaborations;
  @nullable
  BuiltList<int> get paCollaborations;
  @nullable
  String get icaoRoute;
  @nullable
  String get flightState;
  @nullable
  bool get readyForImprovement;
  @nullable
  String get airTrajectoryPictureFilename;
  @nullable
  BuiltList<FlightActionListElement> get actionHistory;
  @nullable
  BuiltList<CollaborationListElement> get collaborationHistory;
  @nullable
  String get cdmStatus;
  @nullable
  String get cdmEarlyTargetTakeOffTime;
  @nullable
  String get cdmAOTargetTakeOffTime;
  @nullable
  String get cdmATCTargetTakeOffTime;
  @nullable
  String get cdmSequencedTargetTakeOffTime;

  Flight._();
  factory Flight([updates(FlightBuilder b)]) = _$Flight;
}

class CollaborationListElement {
  BigInt id;
  String createdBy;
  String userGUID;
  BuiltList<String> users;
  String type;
  String subject;
  DateTime startDate;
  DateTime endDate;
  DateTime creationDate;
  DateTime changedDate;
  BuiltList<String> flights;
  String status;
  String lastMessage;
  bool isRead;
}

class FlightActionListElement {
  DateTime creationDate;
  String originatorName;
  String description;
}
