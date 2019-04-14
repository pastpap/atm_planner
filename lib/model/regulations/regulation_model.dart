import 'package:built_value/built_value.dart';
part 'regulation_model.g.dart';

abstract class FlightRegulationLocation
    implements
        Built<FlightRegulationLocation, FlightRegulationLocationBuilder> {
  String get regulationId;
  String get referenceLocationType;
  String get referenceLocationId;
  bool get toConfirm;
  FlightRegulationLocation._();
  factory FlightRegulationLocation(
          [updates(FlightRegulationLocationBuilder b)]) =
      _$FlightRegulationLocation;
}
